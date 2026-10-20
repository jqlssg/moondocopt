///|
/// Applications decide where to print help/version and whether to terminate.
pub enum Outcome {
  Parsed(Values)
  Help(String)
  Version(String)
} derive(@debug.Debug)

///|
pub extend Outcome with @debug.Debug::{to_repr}

///|
fn truthy(value : Value) -> Bool {
  match value {
    Flag(b) => b
    Text(s) => s != ""
    Missing => false
    Count(n) => n != 0
    Texts(xs) => !xs.is_empty()
  }
}

///|
/// Handle docopt's extras after normalization and before grammar matching.
/// Invalid option syntax still raises even if --help is also present.
pub fn Parser::run(
  self : Parser,
  argv : Array[String],
  help~ : Bool = true,
  version~ : String? = None,
  options_first~ : Bool = false,
) -> Outcome raise DocoptError {
  let tokens = self.normalize(argv, options_first~)
  if help {
    for token in tokens {
      if token is OptionToken(key, value) &&
        (key == "-h" || key == "--help") &&
        truthy(value) {
        return Help(self.document.text.trim().to_owned())
      }
    }
  }
  if version is Some(text) {
    for token in tokens {
      if token is OptionToken("--version", value) && truthy(value) {
        return Version(text)
      }
    }
  }
  Parsed(self.parse_tokens(tokens))
}
