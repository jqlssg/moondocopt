// Independent expected results from MIT Python docopt 0.6.2.

///|
test "review unicode heading" {
  assert_eq(
    Parser::new("İ Usage: p <x>").parse(["a"]).to_json(),
    ({ "<x>": "a" } : Json),
  )
}

///|
test "review unicode default" {
  assert_eq(
    Parser::new(
      "Usage: p [--name=N]\nOptions:\n  --name=N  İ [default: value]",
    )
    .parse([])
    .to_json(),
    ({ "--name": "value" } : Json),
  )
}

///|
test "review implicit unicode short" {
  assert_eq(
    Parser::new("Usage: p [-🙂]").parse(["-🙂"]).to_json(),
    ({ "-🙂": true } : Json),
  )
}

///|
test "review declared unicode cluster" {
  assert_eq(
    Parser::new("Usage: p [-a🙂]\nOptions:\n  -a  ASCII\n  -🙂  Unicode")
    .parse(["-a🙂"])
    .to_json(),
    ({ "-a": true, "-🙂": true } : Json),
  )
}

///|
test "review unicode attached value" {
  assert_eq(
    Parser::new("Usage: p [-🙂 NAME]\nOptions:\n  -🙂 NAME  Value")
    .parse(["-🙂中文"])
    .to_json(),
    ({ "-🙂": "中文" } : Json),
  )
}

///|
test "review unicode separate value" {
  assert_eq(
    Parser::new("Usage: p [-🙂 NAME]\nOptions:\n  -🙂 NAME  Value")
    .parse(["-🙂", "a🙂"])
    .to_json(),
    ({ "-🙂": "a🙂" } : Json),
  )
}

///|
test "review unicode repetition" {
  assert_eq(
    Parser::new("Usage: p [-🙂]...").parse(["-🙂🙂"]).to_json(),
    ({ "-🙂": 2 } : Json),
  )
}

///|
test "review unicode aliases" {
  assert_eq(
    Parser::new("Usage: p [--smile]\nOptions:\n  -🙂 --smile  Smile")
    .parse(["-🙂"])
    .to_json(),
    ({ "--smile": true } : Json),
  )
}
