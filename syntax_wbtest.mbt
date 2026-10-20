///|
test "nested grammar and invalid closers" {
  let p = Document::new("Usage: x [a b] (c|d)...").pattern()
  assert_true(p is Required([Required([Required([Optional(_), Repeat(_)])])]))
  assert_true(
    (Ok(Document::new("Usage: p [x)").pattern()) catch { e => Err(e) })
    is Err(Language(_)),
  )
}
