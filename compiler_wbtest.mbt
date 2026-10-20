///|
test "compiler binds cluster aliases and shortcut excludes explicit options" {
  let p = Parser::new(
    "Usage: tool [options] -vo FILE\nOptions:\n  -v --verbose  Talk\n  -o --output FILE  Output\n  -q --quiet  Quiet",
  )
  let keys = Map([])
  collect_words(p.tree, keys)
  assert_true(keys.contains("--verbose"))
  assert_true(keys.contains("--output"))
  assert_true(keys.contains("--quiet"))
  assert_false(keys.contains("FILE"))
  assert_eq(p.program(), "tool")
  assert_eq(p.options().length(), 3)
}

///|
test "ellipsis repeats a short cluster as one grammar atom" {
  let p = Parser::new("Usage: p -ab...")
  let v = p.parse(["-abab"])
  assert_eq(v.get("-a"), Some(Count(2)))
  assert_eq(v.get("-b"), Some(Count(2)))
  assert_true(
    (Ok(p.parse(["-abb"])) catch { e => Err(e) }) is Err(Arguments(_)),
  )
}
