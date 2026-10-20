///|
test "metadata aliases defaults and lexical suggestions own mutable storage" {
  let p = Parser::new(
    "Usage: p add <file>... [-v]\nOptions:\n  -v --verbose  Talk",
  )
  let infos = p.parameters()
  assert_eq(infos[0].key, "--verbose")
  assert_eq(infos[0].aliases, ["-v", "--verbose"])
  infos[0].aliases.clear()
  assert_eq(p.suggest("--"), ["--verbose"])
  assert_eq(p.suggest("a"), ["add"])
  assert_true(p.describe() is Object(_))
}
