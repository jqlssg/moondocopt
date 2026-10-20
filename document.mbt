///|
/// Models the extracted help text. Section matching is case-insensitive.
pub struct Document {
  text : String
  usage : String
  program : String
  priv option_sections : Array[String]
}

///|
/// Whitespace splitter used by both usage and option declarations.
fn words(text : String) -> Array[String] {
  let out = []
  let buf = StringBuilder()
  for c in text {
    if c.is_whitespace() {
      if !buf.is_empty() {
        out.push(buf.to_string())
        buf.reset()
      }
    } else {
      buf.write_char(c)
    }
  }
  if !buf.is_empty() {
    out.push(buf.to_string())
  }
  out
}

///|
/// Mirrors docopt's section boundaries without a regex dependency.
fn sections(name : String, text : String) -> Array[String] {
  let result = []
  let mut active : String? = None
  for line in text.split("\n") {
    let raw = line.to_owned()
    let lower = raw.to_lower()
    match lower.find(name) {
      Some(start) => {
        if active is Some(previous) {
          result.push(previous)
        }
        active = Some(raw[start:].to_owned())
      }
      None =>
        if raw.length() > 0 && raw[0].to_int() > 32 {
          if active is Some(previous) {
            result.push(previous)
          }
          active = None
        } else if active is Some(previous) {
          active = Some(previous + "\n" + raw)
        }
    }
  }
  if active is Some(previous) {
    result.push(previous)
  }
  result
}

///|
/// Require exactly one Usage section and a program token.
pub fn Document::new(text : String) -> Document raise DocoptError {
  let usages = sections("usage:", text)
  guard usages.length() == 1 else {
    raise Language("expected exactly one Usage: section")
  }
  let tokens = words(usages[0][6:].to_owned())
  guard tokens.length() > 0 else {
    raise Language("Usage: has no program name")
  }
  {
    text,
    usage: usages[0],
    program: tokens[0],
    option_sections: sections("options:", text),
  }
}

///|
/// Returns copies so callers cannot alter later compilation.
pub fn Document::options_sections(self : Document) -> Array[String] {
  self.option_sections.copy()
}
