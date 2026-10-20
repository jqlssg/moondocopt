///|
/// Quote exactly one argument for a POSIX shell. Not valid for Windows shells.
/// Reject NUL because real process argv cannot contain it.
pub fn quote_argument(argument : String) -> String raise DocoptError {
  guard argument.length() <= 1048576 else {
    raise Limit("argument too large to quote")
  }
  if argument == "" {
    return "''"
  }
  let mut safe = true
  for c in argument {
    guard c != '\u0000' else {
      raise Conversion("cannot quote an argv containing NUL")
    }
    if !((
        (c >= 'a' && c <= 'z') ||
        (c >= 'A' && c <= 'Z') ||
        (c >= '0' && c <= '9')
      ) ||
      c == '_' ||
      c == '@' ||
      c == '%' ||
      c == '+' ||
      c == '=' ||
      c == ':' ||
      c == ',' ||
      c == '.' ||
      c == '/' ||
      c == '-') {
      safe = false
    }
  }
  if safe {
    argument
  } else {
    "'" + argument.replace(old="'", new="'\"'\"'") + "'"
  }
}

///|
/// Display or export an argv vector without losing empty strings or boundaries.
/// This never runs a shell; callers remain responsible for process invocation.
pub fn join_command(argv : Array[String]) -> String raise DocoptError {
  guard argv.length() <= 4096 else {
    raise Limit("too many arguments to quote")
  }
  let out = StringBuilder()
  let mut units = 0
  for i, arg in argv {
    guard arg.length() <= 1048576 - units else {
      raise Limit("argv too large to quote")
    }
    units += arg.length()
    if i > 0 {
      out.write_char(' ')
    }
    out.write_string(quote_argument(arg))
  }
  out.to_string()
}
