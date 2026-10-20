///|
/// Normalized argv tokens, before grammar matching.
pub enum ArgumentToken {
  OptionToken(String, Value)
  Positional(String)
} derive(Eq, @debug.Debug)

///|
pub extend ArgumentToken with Eq::{equal, not_equal}

///|
pub extend ArgumentToken with @debug.Debug::{to_repr}

///|
priv struct ArgvCursor {
  args : Array[String]
  mut position : Int32
}

///|
fn ArgvCursor::take(self : ArgvCursor) -> String? {
  if self.position >= self.args.length() {
    None
  } else {
    let token = self.args[self.position]
    self.position += 1
    Some(token)
  }
}

///|
fn ArgvCursor::option_value(
  self : ArgvCursor,
  key : String,
) -> String raise DocoptError {
  match self.take() {
    Some(v) if v != "--" => v
    _ => raise Arguments(key + " requires an argument")
  }
}

///|
fn long_argument(
  token : String,
  cursor : ArgvCursor,
  specs : Array[OptionSpec],
) -> ArgumentToken raise DocoptError {
  let eq = token.find("=")
  let key = token[:eq.unwrap_or(token.length())].to_owned()
  let exact = specs.filter(fn(s) { s.long == Some(key) })
  let candidates = if exact.length() > 0 {
    exact
  } else {
    specs.filter(fn(s) {
      match s.long {
        Some(n) => n.has_prefix(key)
        None => false
      }
    })
  }
  guard candidates.length() <= 1 else {
    raise Arguments("ambiguous option " + key)
  }
  let spec = if candidates.length() == 1 {
    candidates[0]
  } else {
    let unknown = {
      short: None,
      long: Some(key),
      takes_value: eq != None,
      default_value: None,
    }
    specs.push(unknown)
    unknown
  }
  let value = if spec.takes_value {
    Text(
      match eq {
        Some(i) => token[i + 1:].to_owned()
        None => cursor.option_value(key)
      },
    )
  } else {
    guard eq == None else {
      raise Arguments(key + " must not have an argument")
    }
    Flag(true)
  }
  OptionToken(spec.key(), value)
}

///|
/// Normalization is separate from matching for diagnostics and embedding.
/// argv excludes the executable name. A literal -- is retained, as in docopt.
pub fn Parser::normalize(
  self : Parser,
  argv : Array[String],
  options_first~ : Bool = false,
) -> Array[ArgumentToken] raise DocoptError {
  guard argv.length() <= self.limits.argv_count else {
    raise Limit("too many argv items")
  }
  let mut remaining = self.limits.argv_units
  for arg in argv {
    guard arg.length() <= remaining else { raise Limit("argv text too large") }
    remaining -= arg.length()
  }
  let cursor = { args: argv.copy(), position: 0, }
  let specs = self.specs.copy()
  let out = []
  let mut positional_only = false
  while cursor.take() is Some(token) {
    if positional_only {
      out.push(Positional(token))
    } else if token == "--" {
      positional_only = true
      out.push(Positional(token))
    } else if token.has_prefix("--") {
      out.push(long_argument(token, cursor, specs))
    } else if token.has_prefix("-") && token != "-" {
      for item in short_arguments(token, cursor, specs) {
        out.push(item)
      }
    } else {
      out.push(Positional(token))
      if options_first {
        positional_only = true
      }
    }
  }
  out
}

///|
/// A value-taking short option consumes the rest of its cluster, or one argv.
fn short_arguments(
  token : String,
  cursor : ArgvCursor,
  specs : Array[OptionSpec],
) -> Array[ArgumentToken] raise DocoptError {
  let out = []
  let mut i = 1
  while i < token.length() {
    let key = "-" + token[i:i + 1].to_owned()
    i += 1
    let spec = match find_spec(specs, key) {
      Some(n) => specs[n]
      None => {
        let unknown = {
          short: Some(key),
          long: None,
          takes_value: false,
          default_value: None,
        }
        specs.push(unknown)
        unknown
      }
    }
    if spec.takes_value {
      let value = if i < token.length() {
        token[i:].to_owned()
      } else {
        cursor.option_value(key)
      }
      out.push(OptionToken(spec.key(), Text(value)))
      break
    } else {
      out.push(OptionToken(spec.key(), Flag(true)))
    }
  }
  out
}
