///|
test "JSON protocol successful and malformed input" {
  let p = Parser::new("Usage: p <x>")
  assert_eq(
    p.request_json("{\"argv\":[\"data\"]}"),
    ({ "status": "parsed", "values": { "<x>": "data" } } : Json),
  )
  assert_eq(
    p.request_json("{\"argv\":[],\"argv\":[]}"),
    (
      {
        "status": "error",
        "category": "json",
        "message": "invalid JSON request",
      } : Json),
  )
  assert_true(p.request({ "argv": [1] }) is Object(_))
  assert_eq(
    p.request({ "argv": [], "typo": true }),
    (
      {
        "status": "error",
        "category": "conversion",
        "message": "unknown request field typo",
      } : Json),
  )
}
