///|
/// An immutable option declaration. Canonical key prefers the long name.
pub struct OptionSpec {
  short : String?
  long : String?
  takes_value : Bool
  default_value : String?
}

///|
pub fn OptionSpec::key(self : OptionSpec) -> String {
  self.long.unwrap_or(self.short.unwrap_or(""))
}

///|
fn default_text(description : String) -> String? {
  match description.to_lower().find("[default:") {
    None => None
    Some(start) => {
      let tail = description[start + 9:]
      match tail.find("]") {
        None => None
        Some(end) => Some(tail[:end].trim().to_owned())
      }
    }
  }
}

///|
/// Parse the declaration, not the prose after the first double space.
pub fn OptionSpec::parse(source : String) -> OptionSpec raise DocoptError {
  let text = source.trim().to_owned()
  let end = text.find("  ").unwrap_or(text.length())
  let syntax = text[:end]
    .to_owned()
    .replace(old=",", new=" ")
    .replace(old="=", new=" ")
  let mut short = None
  let mut long = None
  let mut takes_value = false
  for token in words(syntax) {
    if token.has_prefix("--") {
      long = Some(token)
    } else if token.has_prefix("-") {
      short = Some(token)
    } else {
      takes_value = true
    }
  }
  guard short != None || long != None else {
    raise Language("option declaration has no name")
  }
  {
    short,
    long,
    takes_value,
    default_value: if takes_value {
      default_text(text[end:].to_owned())
    } else {
      None
    },
  }
}

///|
/// Collect multiline descriptions, preserving upstream declaration order.
pub fn Document::options(
  self : Document,
) -> Array[OptionSpec] raise DocoptError {
  let out = []
  for section in self.option_sections {
    let mut pending = ""
    for raw in section[8:].split("\n") {
      let line = raw.trim().to_owned()
      if line.has_prefix("-") {
        if pending != "" {
          out.push(OptionSpec::parse(pending))
        }
        pending = line
      } else if pending != "" {
        pending = pending + "\n" + line
      }
    }
    if pending != "" {
      out.push(OptionSpec::parse(pending))
    }
  }
  out
}
