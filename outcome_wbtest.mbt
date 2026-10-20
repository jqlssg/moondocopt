///|
test "help version and validation ordering" {
  let p = Parser::new(
    "Usage: p <x>\nOptions:\n  -h --help  Help\n  --version  Version\n  --flag  Flag",
  )
  assert_true(p.run(["-h"]) is Help(_))
  assert_true(p.run(["--version"], version=Some("1.2")) is Version("1.2"))
  assert_true(
    (Ok(p.run(["--help", "--flag=bad"])) catch { e => Err(e) })
    is Err(Arguments(_)),
  )
  assert_true(
    (Ok(p.run(["--help"], help=false)) catch { e => Err(e) })
    is Err(Arguments(_)),
  )
  assert_true(p.run(["x"]) is Parsed(_))
}
