///|
/// Split a POSIX-like command line into argv (never evaluate or execute it).
/// Quotes, backslashes and line continuations are recognized. $, ``, globbing,
/// pipes and redirects stay literal. This is not PowerShell/cmd.exe syntax.
pub fn split_command(
  line : String,
  comments~ : Bool = false,
  max_words~ : Int32 = 4096,
) -> Array[String] raise DocoptError {
  guard max_words > 0 && max_words <= 32768 else {
    raise Conversion("invalid word limit")
  }
  guard line.length() <= 1048576 else { raise Limit("command text too large") }
  let out = []
  let buffer = StringBuilder()
  let mut mode = 0 // 0 bare, 1 single-quoted, 2 double-quoted
  let mut active = false
  let mut escaping = false
  let mut quote_offset = 0
  for offset, c in line.iter2() {
    guard c != '\u0000' else { raise Conversion("NUL in command at \{offset}") }
    if escaping {
      if c != '\n' {
        if mode == 2 && c != '"' && c != '\\' && c != '$' && c != '`' {
          buffer.write_char('\\')
        }
        buffer.write_char(c)
        active = true
      }
      escaping = false
      continue
    }
    if mode == 1 {
      if c == '\'' {
        mode = 0
      } else {
        buffer.write_char(c)
      }
      continue
    }
    if c == '\\' {
      escaping = true
      continue
    }
    if mode == 2 {
      if c == '"' {
        mode = 0
      } else {
        buffer.write_char(c)
      }
      continue
    }
    if c == '\'' || c == '"' {
      mode = if c == '\'' { 1 } else { 2 }
      quote_offset = offset
      active = true
    } else if c == '#' && comments {
      break
    } else if c == ' ' || c == '\t' || c == '\r' || c == '\n' {
      if active {
        guard out.length() < max_words else {
          raise Limit("too many command words")
        }
        out.push(buffer.to_string())
        buffer.reset()
        active = false
      }
    } else {
      buffer.write_char(c)
      active = true
    }
  }
  guard !escaping else {
    raise Conversion("trailing backslash at \{line.length() - 1}")
  }
  guard mode == 0 else { raise Conversion("unclosed quote at \{quote_offset}") }
  if active {
    guard out.length() < max_words else {
      raise Limit("too many command words")
    }
    out.push(buffer.to_string())
  }
  out
}

///|
/// Convenience for in-app consoles: line contains arguments, not program name.
pub fn Parser::parse_line(
  self : Parser,
  line : String,
  options_first~ : Bool = false,
) -> Values raise DocoptError {
  guard line.length() <= self.limits.argv_units else {
    raise Limit("command text too large")
  }
  self.parse(
    split_command(line, max_words=self.limits.argv_count),
    options_first~,
  )
}
