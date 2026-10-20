///|
/// Read-only grammar tree; compiling a document creates its own tree.
pub enum Pattern {
  Word(String)
  Required(Array[Pattern])
  Optional(Array[Pattern])
  Either(Array[Pattern])
  Repeat(Pattern)
  Shortcut
} derive(@debug.Debug)

///|
pub extend Pattern with @debug.Debug::{to_repr}

///|
priv struct SyntaxCursor {
  tokens : Array[UsageToken]
  mut position : Int32
}

///|
fn SyntaxCursor::peek(self : SyntaxCursor) -> String? {
  if self.position < self.tokens.length() {
    Some(self.tokens[self.position].text)
  } else {
    None
  }
}

///|
fn SyntaxCursor::atom(
  self : SyntaxCursor,
  depth : Int32,
) -> Pattern raise DocoptError {
  guard depth <= 128 else { raise Limit("usage nesting exceeds 128") }
  guard self.peek() is Some(t) else { raise Language("expected usage atom") }
  self.position += 1
  match t {
    "(" | "[" => {
      let body = self.expression(depth + 1)
      let closer = if t == "(" { ")" } else { "]" }
      guard self.peek() == Some(closer) else { raise Language("unclosed " + t) }
      self.position += 1
      if t == "(" {
        Required([body])
      } else {
        match body {
          Required(xs) => Optional(xs)
          _ => Optional([body])
        }
      }
    }
    ")" | "]" | "|" | "..." => raise Language("unexpected usage token " + t)
    "options" => Shortcut
    _ => Word(t)
  }
}

///|
fn SyntaxCursor::sequence(
  self : SyntaxCursor,
  depth : Int32,
) -> Pattern raise DocoptError {
  let out = []
  while self.peek() is Some(t) {
    if t == ")" || t == "]" || t == "|" {
      break
    }
    let atom = self.atom(depth)
    if self.peek() == Some("...") {
      self.position += 1
      out.push(Repeat(atom))
    } else {
      out.push(atom)
    }
  }
  Required(out)
}

///|
fn SyntaxCursor::expression(
  self : SyntaxCursor,
  depth : Int32,
) -> Pattern raise DocoptError {
  let branches = [self.sequence(depth)]
  while self.peek() == Some("|") {
    self.position += 1
    branches.push(self.sequence(depth))
  }
  if branches.length() == 1 {
    branches[0]
  } else {
    Either(branches)
  }
}

///|
/// Parse a standalone usage tree; invalid brackets are language errors.
pub fn Document::pattern(self : Document) -> Pattern raise DocoptError {
  let cursor = { tokens: self.tokens(), position: 0, }
  let tree = cursor.expression(0)
  guard cursor.peek() == None else {
    raise Language("unexpected closing bracket")
  }
  tree
}
