///|
/// Usage grammar tokens. Offsets are UTF-16 code units in the formal usage.
pub struct UsageToken {
  text : String
  offset : Int32
}

///|
/// Expand repeated program names into top-level alternatives as docopt does.
fn formal_usage(doc : Document) -> String {
  let ws = words(doc.usage[6:].to_owned())
  let out = StringBuilder()
  out.write_string("( ")
  for i in 1..<ws.length() {
    if ws[i] == doc.program {
      out.write_string(") | ( ")
    } else {
      out.write_string(ws[i])
      out.write_string(" ")
    }
  }
  out.write_string(")")
  out.to_string()
}

///|
/// Lex punctuation without splitting angle-bracket argument names.
pub fn Document::tokens(self : Document) -> Array[UsageToken] raise DocoptError {
  let source = formal_usage(self)
  let out = []
  let mut i = 0
  while i < source.length() {
    let c = source[i]
    if c == 32 || c == 9 || c == 10 || c == 13 {
      i += 1
      continue
    }
    let start = i
    if c == 91 || c == 93 || c == 40 || c == 41 || c == 124 {
      out.push({ text: source[i:i + 1].to_owned(), offset: i, })
      i += 1
      continue
    }
    if i + 3 <= source.length() && source[i:i + 3] == "..." {
      out.push({ text: "...", offset: i, })
      i += 3
      continue
    }
    let mut angle = false
    while i < source.length() {
      let x = source[i]
      if x == 60 {
        angle = true
      }
      if !angle &&
        (
          x == 32 ||
          x == 9 ||
          x == 10 ||
          x == 13 ||
          x == 91 ||
          x == 93 ||
          x == 40 ||
          x == 41 ||
          x == 124
        ) {
        break
      }
      if !angle && i + 3 <= source.length() && source[i:i + 3] == "..." {
        break
      }
      i += 1
      if x == 62 {
        angle = false
      }
    }
    guard !angle else {
      raise Language("unclosed <argument> in usage at \{start}")
    }
    out.push({ text: source[start:i].to_owned(), offset: start, })
  }
  out
}
