///|
test "matching rollback greedy alternatives repetition and defaults replacement" {
  let p = Parser::new(
    "Usage: p (add <x> | add <x> <y>) [-v]...\nOptions:\n  -v  Talk",
  )
  let r = p.parse(["add", "a", "b", "-vv"])
  assert_eq(r.get("<x>"), Some(Text("a")))
  assert_eq(r.get("<y>"), Some(Text("b")))
  assert_eq(r.get("-v"), Some(Count(2)))
  assert_eq(p.parse(["add", "a"]).get("<y>"), Some(Missing))
  let q = Parser::new(
    "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: a b]",
  )
  assert_eq(q.parse(["--path=c"]).get("--path"), Some(Texts(["c"])))
  assert_true(
    (Ok(p.parse(["unknown"])) catch { e => Err(e) }) is Err(Arguments(_)),
  )
}

///|
test "optional individual children and repeat no-progress termination" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"]).get("b"),
    Some(Flag(true)),
  )
  assert_eq(Parser::new("Usage: p [a]...").parse([]).get("a"), Some(Count(0)))
}
