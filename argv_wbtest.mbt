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

///|
test "short clusters and options-first" {
  let p = Parser::new(
    "Usage: p [options] [<x>...]\nOptions:\n  -v --verbose  Talk\n  -q  Quiet\n  -o FILE  Output",
  )
  assert_eq(p.normalize(["-vqoout.txt"]), [
    OptionToken("--verbose", Flag(true)),
    OptionToken("-q", Flag(true)),
    OptionToken("-o", Text("out.txt")),
  ])
  assert_eq(p.normalize(["x", "-v"], options_first=true), [
    Positional("x"),
    Positional("-v"),
  ])
  assert_eq(p.normalize(["-", "-v"]), [
    Positional("-"),
    OptionToken("--verbose", Flag(true)),
  ])
  assert_true(
    (Ok(p.normalize(["-o"])) catch { e => Err(e) }) is Err(Arguments(_)),
  )
}
