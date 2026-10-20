///|
test "branch-sensitive defaults avoid overcounting alternatives" {
  let p = Parser::new("Usage: x [-v] <a>...\n x -v\nOptions:\n  -v  Talk")
  let v = p.defaults()
  assert_eq(v.get("-v"), Some(Flag(false)))
  assert_eq(v.get("<a>"), Some(Texts([])))
  assert_eq(Parser::new("Usage: x -v -v").defaults().get("-v"), Some(Count(0)))
  let q = Parser::new(
    "Usage: x [--path=PATH]...\nOptions:\n  --path=PATH  Paths [default: a b]",
  )
  assert_eq(q.defaults().get("--path"), Some(Texts(["a", "b"])))
}
