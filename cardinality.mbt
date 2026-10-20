///|
/// Maximum simultaneous occurrences per key, capped at two. Either uses max,
/// sequence uses addition. This avoids docopt's exponential branch expansion.
fn cardinalities(tree : Pattern) -> Map[String, Int32] {
  let result = Map([])
  match tree {
    Word(key) => result[key] = 1
    Required(xs) | Optional(xs) =>
      for x in xs {
        for k, n in cardinalities(x) {
          result[k] = Int32::min(2, result.get(k).unwrap_or(0) + n)
        }
      }
    Either(xs) =>
      for x in xs {
        for k, n in cardinalities(x) {
          result[k] = Int32::max(result.get(k).unwrap_or(0), n)
        }
      }
    Repeat(x) =>
      for k, _ in cardinalities(x) {
        result[k] = 2
      }
    Shortcut => ()
  }
  result
}

///|
fn is_argument(key : String) -> Bool {
  (key.has_prefix("<") && key.has_suffix(">")) ||
  (key == key.to_upper() && key != key.to_lower())
}

///|
/// Default result types depend on grammar cardinality, not current argv.
pub fn Parser::defaults(self : Parser) -> Values raise DocoptError {
  let values = Map([])
  for key, count in cardinalities(self.tree) {
    let spec = find_spec(self.specs, key).map(fn(i) { self.specs[i] })
    let value = match spec {
      Some(s) =>
        if s.takes_value {
          if count > 1 {
            Texts(s.default_value.map(words).unwrap_or([]))
          } else {
            s.default_value.map(fn(v) { Text(v) }).unwrap_or(Missing)
          }
        } else if count > 1 {
          Count(0)
        } else {
          Flag(false)
        }
      None =>
        if is_argument(key) {
          if count > 1 {
            Texts([])
          } else {
            Missing
          }
        } else if count > 1 {
          Count(0)
        } else {
          Flag(false)
        }
    }
    values[key] = value
  }
  Values::new(values)
}
