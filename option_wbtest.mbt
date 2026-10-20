///|
test "aliases defaults multiline and flag descriptions" {
  let d = Document::new(
    "Usage: tool\nOptions:\n  -o --output=FILE  Save data.\n    [default: out.txt]\n  -v, --verbose  Talk",
  )
  let opts = d.options()
  assert_eq(opts.length(), 2)
  assert_eq(opts[0].key(), "--output")
  assert_eq(opts[0].short, Some("-o"))
  assert_eq(opts[0].default_value, Some("out.txt"))
  assert_true(opts[0].takes_value)
  assert_false(opts[1].takes_value)
}
