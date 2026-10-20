///|
/// Introspection for editor, completion and embedded-console integrations.
pub struct ParameterInfo {
  key : String
  kind : String
  repeated : Bool
  aliases : Array[String]
  default_value : Value
}

///|
pub fn ParameterInfo::to_json(self : ParameterInfo) -> Json {
  {
    "key": Json(self.key),
    "kind": Json(self.kind),
    "repeated": Json(self.repeated),
    "aliases": Json(self.aliases),
    "default": self.default_value.to_json(),
  }
}

///|
/// Ordered metadata is reconstructed, never shared with the compiled parser.
pub fn Parser::parameters(
  self : Parser,
) -> Array[ParameterInfo] raise DocoptError {
  let defaults = self.defaults()
  let out = []
  for key in self.keys() {
    let spec = find_spec(self.specs, key).map(fn(i) { self.specs[i] })
    let aliases = []
    let kind = match spec {
      Some(s) => {
        if s.short is Some(n) {
          aliases.push(n)
        }
        if s.long is Some(n) {
          aliases.push(n)
        }
        if s.takes_value {
          "option-value"
        } else {
          "option-flag"
        }
      }
      None => if is_argument(key) { "argument" } else { "command" }
    }
    let default_value = defaults.get(key).unwrap_or(Missing)
    let repeated = match default_value {
      Texts(_) | Count(_) => true
      _ => false
    }
    out.push({ key, kind, repeated, aliases, default_value, })
  }
  out
}

///|
/// Machine-readable description; not a code-first schema or parser definition.
pub fn Parser::describe(self : Parser) -> Json raise DocoptError {
  {
    "program": Json(self.program()),
    "usage": Json(self.usage()),
    "parameters": Json::array(self.parameters().map(fn(p) { p.to_json() })),
  }
}

///|
/// Lexical suggestions only. They do not promise that a grammar branch matches.
pub fn Parser::suggest(
  self : Parser,
  prefix : String,
) -> Array[String] raise DocoptError {
  let candidates = Map([])
  for info in self.parameters() {
    if info.kind == "command" && info.key.has_prefix(prefix) {
      candidates[info.key] = true
    }
    for spelling in info.aliases {
      if spelling.has_prefix(prefix) {
        candidates[spelling] = true
      }
    }
  }
  let result = candidates.keys().to_array()
  result.sort_by(fn(a, b) { a[:].lexical_compare(b[:]) })
  result
}
