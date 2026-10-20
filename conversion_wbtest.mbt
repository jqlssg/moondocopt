///|
test "strict conversion boundaries and ownership" {
  let v = Parser::new(
    "Usage: p <n>... [--mode=M]\nOptions:\n  --mode=M  Mode [default: sum]",
  ).parse(["+2147483647", "-2147483648"], options_first=true)
  assert_eq(v.integers("<n>"), [2147483647, -2147483648])
  assert_eq(v.choice("--mode", ["sum", "max"]), "sum")
  for s in ["", "+", "2147483648", "-2147483649", "1x", " 2", "2 ", "0x10"] {
    assert_true(
      (Ok(decimal_int(s, "n")) catch { e => Err(e) }) is Err(Conversion(_)),
    )
  }
  let xs = v.texts("<n>")
  xs.clear()
  assert_eq(v.texts("<n>").length(), 2)
}
