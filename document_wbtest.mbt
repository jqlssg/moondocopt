///|
test "sections and nonindented footer" {
  let d = Document::new(
    "Title\nUSAGE: tool <x>\n  tool --version\nFooter\nOptions:\n  -v  Version",
  )
  assert_eq(d.program, "tool")
  assert_eq(d.usage, "USAGE: tool <x>\n  tool --version")
  assert_eq(d.options_sections().length(), 1)
  let a = d.options_sections()
  a.clear()
  assert_eq(d.options_sections().length(), 1)
}

///|
test "missing and ambiguous usage" {
  assert_true(
    (Ok(Document::new("no grammar")) catch { e => Err(e) }) is Err(Language(_)),
  )
  assert_true(
    (Ok(Document::new("Usage: x\nUsage: y")) catch { e => Err(e) })
    is Err(Language(_)),
  )
  assert_eq(words(" x\t y \n z"), ["x", "y", "z"])
}
