///|
test "punctuation repetition and long option placeholders" {
  let d = Document::new("Usage: p [-a] (<x>|--output=<file>)...\n p --help")
  assert_eq(d.tokens().map(fn(t) { t.text }), [
    "(", "[", "-a", "]", "(", "<x>", "|", "--output=<file>", ")", "...", ")", "|",
    "(", "--help", ")",
  ])
  assert_true(
    (Ok(Document::new("Usage: p <x").tokens()) catch { e => Err(e) })
    is Err(Language(_)),
  )
}
