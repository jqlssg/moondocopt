///|
test "long exact unique prefix value and ambiguity" {
  let p = Parser::new(
    "Usage: p [options]\nOptions:\n  --output=FILE  Output\n  --other  Other\n  --quiet  Quiet",
  )
  assert_eq(p.normalize(["--out=data", "--qui"]), [
    OptionToken("--output", Text("data")),
    OptionToken("--quiet", Flag(true)),
  ])
  assert_true(
    (Ok(p.normalize(["--o"])) catch { e => Err(e) }) is Err(Arguments(_)),
  )
  assert_true(
    (Ok(p.normalize(["--output", "--"])) catch { e => Err(e) })
    is Err(Arguments(_)),
  )
  assert_eq(p.normalize(["--", "--quiet"]), [
    Positional("--"),
    Positional("--quiet"),
  ])
}
