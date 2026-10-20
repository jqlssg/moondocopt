///|
test "typed values own arrays and distinguish absent keys from null" {
  let xs = ["a"]
  let v = Values::new({
    "--file": Texts(xs),
    "<x>": Missing,
    "--quiet": Flag(false),
  })
  xs.push("b")
  assert_eq(v.get("--file"), Some(Texts(["a"])))
  assert_eq(v.get("absent"), None)
  assert_eq(v.text("<x>"), None)
  assert_false(v.flag("--quiet"))
  assert_eq(v.keys(), ["--file", "--quiet", "<x>"])
  assert_eq(
    v.to_json(),
    ({ "--file": ["a"], "<x>": null, "--quiet": false } : Json),
  )
}
