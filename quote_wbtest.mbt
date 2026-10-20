///|
test "quote roundtrip including injection-shaped data" {
  let argv = [
    "", "a b", "'", "$(echo hacked)", "x; rm -rf /", "\n", "中文🙂", "a\\b",
    "#comment",
  ]
  assert_eq(split_command(join_command(argv)), argv)
  assert_eq(quote_argument("hello-world.txt"), "hello-world.txt")
  assert_eq(quote_argument("a'b"), "'a'\"'\"'b'")
  assert_true(
    (Ok(quote_argument("\u0000")) catch { e => Err(e) }) is Err(Conversion(_)),
  )
}
