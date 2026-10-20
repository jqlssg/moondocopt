///|
/// Each branch receives persistent state; failed sequences cannot leak values.
priv struct MatchState {
  left : Array[ArgumentToken]
  collected : Map[String, Value]
}

///|
fn leaf_match(
  key : String,
  state : MatchState,
  defaults : Values,
) -> MatchState? {
  let mut index = -1
  let mut value = Missing
  let option = key.has_prefix("-") && key != "-" && key != "--"
  for i, token in state.left {
    match token {
      OptionToken(name, v) =>
        if option && name == key {
          index = i
          value = v
          break
        }
      Positional(text) =>
        if !option {
          if is_argument(key) {
            index = i
            value = Text(text)
          } else if text == key {
            index = i
            value = Flag(true)
          }
          break
        }
    }
  }
  guard index >= 0 else { return None }
  let left = []
  for i, token in state.left {
    if i != index {
      left.push(token)
    }
  }
  let collected = state.collected.copy()
  collected[key] = match defaults.get(key) {
    Some(Count(_)) =>
      match collected.get(key) {
        Some(Count(n)) => Count(n + 1)
        _ => Count(1)
      }
    Some(Texts(_)) => {
      let xs = match collected.get(key) {
        Some(Texts(v)) => v.copy()
        _ => []
      }
      match value {
        Text(s) => xs.push(s)
        _ => ()
      }
      Texts(xs)
    }
    _ => value
  }
  Some({ left, collected, })
}

///|
fn match_tree(
  tree : Pattern,
  state : MatchState,
  defaults : Values,
) -> MatchState? {
  match tree {
    Word(key) => leaf_match(key, state, defaults)
    Required(xs) => {
      let mut current = state
      for x in xs {
        guard match_tree(x, current, defaults) is Some(next) else {
          return None
        }
        current = next
      }
      Some(current)
    }
    Optional(xs) => {
      let mut current = state
      for x in xs {
        if match_tree(x, current, defaults) is Some(next) {
          current = next
        }
      }
      Some(current)
    }
    Either(xs) => {
      let mut best : MatchState? = None
      for x in xs {
        if match_tree(x, state, defaults) is Some(candidate) {
          match best {
            None => best = Some(candidate)
            Some(previous) =>
              if candidate.left.length() < previous.left.length() {
                best = Some(candidate)
              }
          }
        }
      }
      best
    }
    Repeat(x) => {
      let mut current = state
      let mut times = 0
      while match_tree(x, current, defaults) is Some(next) {
        times += 1
        let progressed = next.left.length() < current.left.length()
        current = next
        if !progressed {
          break
        }
      }
      if times > 0 {
        Some(current)
      } else {
        None
      }
    }
    Shortcut => Some(state)
  }
}

///|
/// Parse argv without automatic help/version handling. No printing or exiting.
pub fn Parser::parse(
  self : Parser,
  argv : Array[String],
  options_first~ : Bool = false,
) -> Values raise DocoptError {
  self.parse_tokens(self.normalize(argv, options_first~))
}

///|
fn Parser::parse_tokens(
  self : Parser,
  input : Array[ArgumentToken],
) -> Values raise DocoptError {
  let defaults = self.defaults()
  let state = { left: input, collected: Map([]), }
  guard match_tree(self.tree, state, defaults) is Some(matched) else {
    raise Arguments("arguments do not match " + self.usage())
  }
  guard matched.left.is_empty() else {
    raise Arguments("unmatched arguments in " + self.usage())
  }
  let result = defaults.items.copy()
  for key, value in matched.collected {
    result[key] = value
  }
  Values::new(result)
}
