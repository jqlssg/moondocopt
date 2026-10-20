// Independent generated answers from vendored Python docopt 0.6.2, seed 20261020.

///|
test "differential 1" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 2" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 3" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 4" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 5" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 6" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 7" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 8" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 9" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 10" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 11" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 12" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 13" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 14" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 15" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 16" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 17" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 18" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 19" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 20" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 21" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 22" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 23" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 24" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 25" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 26" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 27" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 28" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 29" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 30" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["a"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "a" } : Json),
  )
}

///|
test "differential 31" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 32" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["-v", "a"], options_first=true)
    .to_json(),
    ({ "-v": true, "<x>": "a" } : Json),
  )
}

///|
test "differential 33" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "--lis", "--list", "", "--", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 34" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "--lis", "--list", "", "--", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 35" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["a", "--list", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 36" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["a", "--list", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 37" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "b", "add", "a", "--", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 38" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "b", "add", "a", "--", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 39" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["b"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "b" } : Json),
  )
}

///|
test "differential 40" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["b"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "b" } : Json),
  )
}

///|
test "differential 41" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 42" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(["--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 43" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 44" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 45" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "--list", "--list", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 46" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "--list", "--list", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 47" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["add"], options_first=false)
    .to_json(),
    ({ "-v": false, "<x>": "add" } : Json),
  )
}

///|
test "differential 48" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["add"], options_first=true)
    .to_json(),
    ({ "-v": false, "<x>": "add" } : Json),
  )
}

///|
test "differential 49" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 50" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 51" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 52" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 53" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["b"], options_first=false).to_json(),
    ({ "-v": false, "<x>": "b" } : Json),
  )
}

///|
test "differential 54" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>").parse(["b"], options_first=true).to_json(),
    ({ "-v": false, "<x>": "b" } : Json),
  )
}

///|
test "differential 55" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "-ab", "-o", "--output=x", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 56" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "-ab", "-o", "--output=x", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 57" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--unknown", "-v", "--unknown", "--list", "-o", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 58" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--unknown", "-v", "--unknown", "--list", "-o", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 59" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "b", "--", "--unknown", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 60" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "b", "--", "--unknown", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 61" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "b", "--lis", "--path=z", "--path=z", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 62" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "b", "--lis", "--path=z", "--path=z", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 63" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "-o", "-v", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 64" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "-o", "-v", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 65" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["add", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 66" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(["add", "-ab"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 67" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--path=z", "add", "b", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 68" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--path=z", "add", "b", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 69" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 70" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 71" {
  assert_eq(
    Parser::new("Usage: p [-v] <x>")
    .parse(["b", "-v"], options_first=false)
    .to_json(),
    ({ "-v": true, "<x>": "b" } : Json),
  )
}

///|
test "differential 72" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse(["b", "-v"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 73" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["b", "--output=x", "--lis", "", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 74" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["b", "--output=x", "--lis", "", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 75" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 76" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 77" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "--output=x", "中文", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 78" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "--output=x", "中文", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 79" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["data", "--output=x", "--path=z", "add", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 80" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["data", "--output=x", "--path=z", "add", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 81" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 82" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(["--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 83" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "--lis", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 84" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "--lis", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 85" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse(["-ab"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 86" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse(["-ab"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 87" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "--", "-o", "--output=x", "-o", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 88" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "--", "-o", "--output=x", "-o", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 89" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "-v", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 90" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "-v", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 91" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["a", "data", "-v", "b", "--lis", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 92" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["a", "data", "-v", "b", "--lis", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 93" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--list", "data", "data", "add", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 94" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--list", "data", "data", "add", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 95" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(["add", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 96" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(["add", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 97" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 98" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 99" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["中文", "", "中文", "--list", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 100" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["中文", "", "中文", "--list", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 101" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["data", "--unknown", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 102" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["data", "--unknown", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 103" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--path=z", "add", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 104" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--path=z", "add", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 105" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 106" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 107" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "--list", "--", "-ab", "-ab", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 108" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--lis", "--list", "--", "-ab", "-ab", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 109" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--list", "-o", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 110" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--list", "-o", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 111" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "--output=x", "-o", "--", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 112" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-v", "--output=x", "-o", "--", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 113" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--list", "b", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 114" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--list", "b", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 115" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["中文", "-o", "-o", "b", "--list", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 116" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["中文", "-o", "-o", "b", "--list", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 117" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["data", "--lis", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 118" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["data", "--lis", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 119" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--output=x", "a", "-v", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 120" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["--output=x", "a", "-v", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 121" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["中文", "add", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 122" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["中文", "add", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 123" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 124" {
  assert_true(
    (Ok(Parser::new("Usage: p [-v] <x>").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 125" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-ab", "-o", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 126" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-ab", "-o", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 127" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "--output=x", "", "--unknown", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 128" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v] <x>").parse(
        ["-o", "--output=x", "", "--unknown", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 129" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 130" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 131" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 132" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 133" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 134" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 135" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 136" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 137" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 138" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 139" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 140" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 141" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 142" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 143" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 144" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 145" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 146" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 147" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 148" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 149" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 150" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 151" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 152" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 153" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 154" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 155" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 156" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 157" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 158" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 159" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 160" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 161" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 162" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 163" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 164" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 165" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 166" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 167" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 168" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 169" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 170" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 171" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 172" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 173" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=false)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 174" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-vvv"], options_first=true)
    .to_json(),
    ({ "-v": 3, "<x>": [] } : Json),
  )
}

///|
test "differential 175" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 176" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "b"] } : Json),
  )
}

///|
test "differential 177" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["--", "a", "--unknown"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["--", "a", "--unknown"] } : Json),
  )
}

///|
test "differential 178" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["--", "a", "--unknown"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["--", "a", "--unknown"] } : Json),
  )
}

///|
test "differential 179" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "--output=x", "data", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 180" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "--output=x", "data", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 181" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-o", "--unknown", "", "--path=z", "add", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 182" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-o", "--unknown", "", "--path=z", "add", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 183" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 184" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 185" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 186" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 187" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-v"], options_first=false)
    .to_json(),
    ({ "-v": 1, "<x>": [] } : Json),
  )
}

///|
test "differential 188" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-v"], options_first=true)
    .to_json(),
    ({ "-v": 1, "<x>": [] } : Json),
  )
}

///|
test "differential 189" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["", "--", "--", "--unknown", "data", "-v"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["", "--", "--", "--unknown", "data", "-v"] } : Json),
  )
}

///|
test "differential 190" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["", "--", "--", "--unknown", "data", "-v"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["", "--", "--", "--unknown", "data", "-v"] } : Json),
  )
}

///|
test "differential 191" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 192" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 193" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--lis", "中文", "--list", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 194" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--lis", "中文", "--list", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 195" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--output=x", "b", "add", "data", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 196" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--output=x", "b", "add", "data", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 197" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 198" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 199" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 200" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 201" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list", "-o", "add", "--", "中文", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 202" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list", "-o", "add", "--", "中文", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 203" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["", "--list", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 204" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["", "--list", "--"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["", "--list", "--"] } : Json),
  )
}

///|
test "differential 205" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 206" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 207" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-v", "--lis", "--list", "-o", "--output=x", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 208" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-v", "--lis", "--list", "-o", "--output=x", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 209" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["b"] } : Json),
  )
}

///|
test "differential 210" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["b"] } : Json),
  )
}

///|
test "differential 211" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "--unknown", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 212" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "--unknown", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 213" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--lis", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 214" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--lis", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 215" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 216" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 217" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["--", "", "--unknown"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["--", "", "--unknown"] } : Json),
  )
}

///|
test "differential 218" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["--", "", "--unknown"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["--", "", "--unknown"] } : Json),
  )
}

///|
test "differential 219" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown", "data", "add", "--output=x", "--output=x", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 220" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown", "data", "add", "--output=x", "--output=x", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 221" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["b"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["b"] } : Json),
  )
}

///|
test "differential 222" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["b"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["b"] } : Json),
  )
}

///|
test "differential 223" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 224" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 225" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown", "--path=z", "b", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 226" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown", "--path=z", "b", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 227" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 228" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 229" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["data", "-v", "中文", "add", "--path=z", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 230" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(
      ["data", "-v", "中文", "add", "--path=z", "--path=z"],
      options_first=true,
    )
    .to_json(),
    (
      {
        "-v": 0,
        "<x>": ["data", "-v", "中文", "add", "--path=z", "--path=z"],
      } : Json),
  )
}

///|
test "differential 231" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 232" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 233" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["中文", "b", "--lis", "b", "--list", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 234" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(
      ["中文", "b", "--lis", "b", "--list", "中文"],
      options_first=true,
    )
    .to_json(),
    (
      { "-v": 0, "<x>": ["中文", "b", "--lis", "b", "--list", "中文"] } :
      Json),
  )
}

///|
test "differential 235" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "--"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "--"] } : Json),
  )
}

///|
test "differential 236" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "--"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "--"] } : Json),
  )
}

///|
test "differential 237" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 238" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 239" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 240" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 241" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown", "", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 242" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown", "", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 243" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list", "--lis", "--", "--list", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 244" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--list", "--lis", "--", "--list", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 245" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["b", "--lis", "--list", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 246" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["b", "--lis", "--list", "中文"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["b", "--lis", "--list", "中文"] } : Json),
  )
}

///|
test "differential 247" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 248" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 249" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["--"], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": ["--"] } : Json),
  )
}

///|
test "differential 250" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["--"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["--"] } : Json),
  )
}

///|
test "differential 251" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 252" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 253" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 254" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 255" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--output=x", "", "--lis", "--output=x", "a", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 256" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--output=x", "", "--lis", "--output=x", "a", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 257" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--path=z", "add", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 258" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--path=z", "add", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 259" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 260" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse([], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": [] } : Json),
  )
}

///|
test "differential 261" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["add", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 262" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["add", "-ab"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["add", "-ab"] } : Json),
  )
}

///|
test "differential 263" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(
      ["a", "--", "--unknown", "--path=z", "--path=z"],
      options_first=false,
    )
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "--", "--unknown", "--path=z", "--path=z"] } : Json),
  )
}

///|
test "differential 264" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["a", "--", "--unknown", "--path=z", "--path=z"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["a", "--", "--unknown", "--path=z", "--path=z"] } : Json),
  )
}

///|
test "differential 265" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "--output=x", "--path=z", "--output=x", "-v", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 266" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["-ab", "--output=x", "--path=z", "--output=x", "-v", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 267" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["data", "b", "--unknown", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 268" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["data", "b", "--unknown", "--"], options_first=true)
    .to_json(),
    ({ "-v": 0, "<x>": ["data", "b", "--unknown", "--"] } : Json),
  )
}

///|
test "differential 269" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--path=z", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 270" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-v]... [<x>...]").parse(
        ["--path=z", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 271" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-v", "b", "b", "--", "-ab"], options_first=false)
    .to_json(),
    ({ "-v": 1, "<x>": ["b", "b", "--", "-ab"] } : Json),
  )
}

///|
test "differential 272" {
  assert_eq(
    Parser::new("Usage: p [-v]... [<x>...]")
    .parse(["-v", "b", "b", "--", "-ab"], options_first=true)
    .to_json(),
    ({ "-v": 1, "<x>": ["b", "b", "--", "-ab"] } : Json),
  )
}

///|
test "differential 273" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 274" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 275" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 276" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 277" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 278" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 279" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 280" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 281" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 282" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 283" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 284" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 285" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 286" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 287" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 288" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 289" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 290" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 291" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 292" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 293" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 294" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 295" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 296" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 297" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 298" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 299" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 300" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 301" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 302" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 303" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=false)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 304" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "a", "b"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 305" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "add", "add", "--unknown", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 306" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "add", "add", "--unknown", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 307" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["b", "--output=x", "data", "--output=x", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 308" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["b", "--output=x", "data", "--output=x", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 309" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "--", "--path=z", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 310" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "--", "--path=z", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 311" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--output=x", "--", "--lis", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 312" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--output=x", "--", "--lis", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 313" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "--unknown", "-o", "-v", "b", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 314" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "--unknown", "-o", "-v", "b", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 315" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 316" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 317" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--output=x", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 318" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--output=x", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 319" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["add", "--list", "--path=z", "--unknown", "-ab", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 320" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["add", "--list", "--path=z", "--unknown", "-ab", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 321" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--lis", "--list", "-o", "add", "--path=z", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 322" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--lis", "--list", "-o", "add", "--path=z", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 323" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 324" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 325" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "add", "中文", "--unknown", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 326" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "add", "中文", "--unknown", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 327" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["add", "--unknown", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 328" {
  assert_eq(
    Parser::new("Usage: p (add <x> | add <x> <y>)")
    .parse(["add", "--unknown", "--"], options_first=true)
    .to_json(),
    ({ "add": true, "<x>": "--unknown", "<y>": "--" } : Json),
  )
}

///|
test "differential 329" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "--list", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 330" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "--list", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 331" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 332" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 333" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--unknown", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 334" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--unknown", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 335" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--path=z", "--", "-ab", "--lis", "-v", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 336" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--path=z", "--", "-ab", "--lis", "-v", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 337" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 338" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 339" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["中文", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 340" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["中文", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 341" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 342" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 343" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 344" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 345" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "--", "中文", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 346" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "--", "中文", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 347" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "data", "-ab", "-ab", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 348" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "data", "-ab", "-ab", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 349" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["data", "--path=z", "a", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 350" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["data", "--path=z", "a", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 351" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--path=z", "中文", "add", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 352" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--path=z", "中文", "add", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 353" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "--output=x", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 354" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab", "--output=x", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 355" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["b", "", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 356" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["b", "", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 357" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 358" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 359" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "add", "--unknown", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 360" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "add", "--unknown", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 361" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["b", "--lis", "", "--", "b", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 362" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["b", "--lis", "", "--", "b", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 363" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "-o", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 364" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "-o", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 365" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "-ab", "--unknown", "-o", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 366" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "-ab", "--unknown", "-o", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 367" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "b", "--path=z", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 368" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "b", "--path=z", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 369" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--list", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 370" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--list", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 371" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "data", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 372" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-o", "data", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 373" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--output=x", "", "--", "中文", "--unknown", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 374" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--output=x", "", "--", "中文", "--unknown", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 375" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "b", "add", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 376" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "b", "add", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 377" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 378" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 379" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 380" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 381" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["add", "--output=x", "--list", "add", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 382" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["add", "--output=x", "--list", "add", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 383" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 384" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 385" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 386" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 387" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--lis", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 388" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--lis", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 389" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--unknown", "--output=x", "--", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 390" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--unknown", "--output=x", "--", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 391" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--lis", "-v", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 392" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--lis", "-v", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 393" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 394" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 395" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "data", "a", "-v", "--output=x", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 396" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--", "data", "a", "-v", "--output=x", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 397" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--path=z", "--", "-ab", "data", "data", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 398" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        ["--path=z", "--", "-ab", "data", "data", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 399" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 400" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (add <x> | add <x> <y>)").parse(
        [],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 401" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 402" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 403" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 404" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 405" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 406" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 407" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 408" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 409" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 410" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 411" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 412" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 413" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 414" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 415" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 416" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 417" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 418" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 419" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 420" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 421" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 422" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 423" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 424" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 425" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 426" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 427" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 428" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 429" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 430" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 431" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 432" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 433" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "-v", "--list", "--list", "data", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 434" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "-v", "--list", "--list", "data", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 435" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "b", "--lis", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 436" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "b", "--lis", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 437" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--list", "--lis", "--path=z", "-v", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 438" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--list", "--lis", "--path=z", "-v", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 439" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 440" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 441" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 442" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 443" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["data", "--", "中文", "-v", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 444" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["data", "--", "中文", "-v", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 445" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 446" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 447" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["-o", "a", "中文", "add", "中文", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 448" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["-o", "a", "中文", "add", "中文", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 449" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--output=x", "a", "-ab", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 450" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--output=x", "a", "-ab", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 451" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "--", "", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 452" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "--", "", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 453" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 454" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 455" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["data", "--", "", "-ab", "--lis", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 456" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["data", "--", "", "-ab", "--lis", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 457" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["", "a", "--output=x", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 458" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["", "a", "--output=x", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 459" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--lis", "b", "--output=x", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 460" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--lis", "b", "--output=x", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 461" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 462" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 463" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 464" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 465" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 466" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 467" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse(["-v"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 468" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse(["-v"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 469" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "--output=x", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 470" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "--output=x", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 471" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(["", "add"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 472" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(["", "add"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 473" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 474" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 475" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 476" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 477" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--lis", "--unknown", "b", "-v", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 478" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--lis", "--unknown", "b", "-v", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 479" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 480" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 481" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "a", "--", "a", "--list", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 482" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "a", "--", "a", "--list", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 483" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 484" {
  assert_eq(
    Parser::new("Usage: p (-a -b)...")
    .parse(["-ab"], options_first=true)
    .to_json(),
    ({ "-a": 1, "-b": 1 } : Json),
  )
}

///|
test "differential 485" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["b", "a", "--path=z", "-v", "--unknown", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 486" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["b", "a", "--path=z", "-v", "--unknown", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 487" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "add", "--path=z", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 488" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "add", "--path=z", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 489" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 490" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 491" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["-o", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 492" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["-o", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 493" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "-o", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 494" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "-o", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 495" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 496" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 497" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--output=x", "--unknown", "中文", "-ab", "--output=x", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 498" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--output=x", "--unknown", "中文", "-ab", "--output=x", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 499" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["", "--list", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 500" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["", "--list", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 501" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["", "data", "add", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 502" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["", "data", "add", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 503" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["-v", "-o", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 504" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["-v", "-o", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 505" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 506" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 507" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--list", "b", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 508" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--list", "b", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 509" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse(["add"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 510" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse(["add"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 511" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--list", "-ab", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 512" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--list", "-ab", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 513" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--path=z", "-v", "--unknown", "--lis", "a", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 514" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--path=z", "-v", "--unknown", "--lis", "a", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 515" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "--list", "--output=x", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 516" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "--list", "--output=x", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 517" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 518" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 519" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 520" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 521" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["b", "--list", "--path=z", "--", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 522" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["b", "--list", "--path=z", "--", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 523" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "", "中文", "--", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 524" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["中文", "", "中文", "--", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 525" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 526" {
  assert_true(
    (Ok(Parser::new("Usage: p (-a -b)...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 527" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 528" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (-a -b)...").parse(
        ["a", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 529" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 530" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 531" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 532" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 533" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 534" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 535" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 536" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 537" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 538" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 539" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 540" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 541" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 542" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 543" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 544" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 545" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 546" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 547" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 548" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 549" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 550" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 551" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 552" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 553" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 554" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 555" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 556" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 557" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 558" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 559" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 560" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 561" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 562" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 563" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 564" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 565" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 566" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 567" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 568" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 569" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 570" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 571" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 572" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 573" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 574" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 575" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 576" {
  assert_eq(
    Parser::new("Usage: p [a b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": true } : Json),
  )
}

///|
test "differential 577" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--path=z", "-ab", "--", "a", "-ab", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 578" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--path=z", "-ab", "--", "a", "-ab", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 579" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(["--list", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 580" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(["--list", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 581" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "data", "b", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 582" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "data", "b", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 583" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["--unknown"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 584" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["--unknown"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 585" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 586" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 587" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 588" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 589" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 590" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 591" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 592" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 593" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["", "--lis", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 594" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["", "--lis", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 595" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 596" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 597" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--", "a", "-o", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 598" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--", "a", "-o", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 599" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=false).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 600" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse(["b"], options_first=true).to_json(),
    ({ "a": false, "b": true } : Json),
  )
}

///|
test "differential 601" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 602" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 603" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--list", "--list", "a", "add", "-o", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 604" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--list", "--list", "a", "add", "-o", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 605" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-v", "--unknown", "", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 606" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-v", "--unknown", "", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 607" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 608" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 609" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(["中文", "-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 610" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(["中文", "-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 611" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(["--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 612" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["--output=x"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 613" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["", "--list", "data", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 614" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["", "--list", "data", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 615" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "-v", "add", "--list", "add", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 616" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "-v", "add", "--list", "add", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 617" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--list", "--unknown", "--output=x", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 618" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--list", "--unknown", "--output=x", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 619" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-o", "a", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 620" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(["-o", "a", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 621" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["a", "data", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 622" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["a", "data", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 623" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "-ab", "--path=z", "", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 624" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "-ab", "--path=z", "", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 625" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--", "a", "中文", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 626" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--", "a", "中文", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 627" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-ab", "--path=z", "--path=z", "-v", "中文", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 628" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-ab", "--path=z", "--path=z", "-v", "中文", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 629" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["b", "a", "--output=x", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 630" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["b", "a", "--output=x", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 631" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 632" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 633" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["中文", "data", "data", "-ab", "a", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 634" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["中文", "data", "data", "-ab", "a", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 635" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["b", "--output=x", "--output=x", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 636" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["b", "--output=x", "--output=x", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 637" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse([""], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 638" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse([""], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 639" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-ab", "b", "--unknown", "--", "b", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 640" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["-ab", "b", "--unknown", "--", "b", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 641" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "add", "add", "--lis", "--output=x", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 642" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "add", "add", "--lis", "--output=x", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 643" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "--output=x", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 644" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "--output=x", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 645" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 646" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 647" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["b", "--list", "", "--path=z", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 648" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["b", "--list", "", "--path=z", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 649" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "--list", "--", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 650" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "--list", "--", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 651" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["--path=z"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 652" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["--path=z"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 653" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 654" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 655" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--path=z", "--", "-ab", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 656" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--path=z", "--", "-ab", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 657" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--unknown", "", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 658" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--unknown", "", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 659" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "data", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 660" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "data", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 661" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 662" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 663" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "--unknown", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 664" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["--lis", "--unknown", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 665" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 666" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 667" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "a", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 668" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [a b]").parse(
        ["data", "a", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 669" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["-o"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 670" {
  assert_true(
    (Ok(Parser::new("Usage: p [a b]").parse(["-o"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 671" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=false).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 672" {
  assert_eq(
    Parser::new("Usage: p [a b]").parse([], options_first=true).to_json(),
    ({ "a": false, "b": false } : Json),
  )
}

///|
test "differential 673" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 674" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 675" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 676" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 677" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 678" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 679" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 680" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 681" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 682" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 683" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 684" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 685" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 686" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 687" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 688" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 689" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 690" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 691" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 692" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 693" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 694" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 695" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 696" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 697" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 698" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 699" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 700" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 701" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 702" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 703" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 704" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a"] } : Json),
  )
}

///|
test "differential 705" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["a", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 706" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a", "--unknown"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a", "--unknown"] } : Json),
  )
}

///|
test "differential 707" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["data", "中文", "data", "--unknown", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 708" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["data", "中文", "data", "--unknown", ""], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["data", "中文", "data", "--unknown", ""] } : Json),
  )
}

///|
test "differential 709" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 710" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 711" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 712" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 713" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["add", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 714" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add", "--lis"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["add", "--lis"] } : Json),
  )
}

///|
test "differential 715" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 716" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 717" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["data", "-ab", "--path=z", "--", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 718" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["data", "-ab", "--path=z", "--", "a"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["data", "-ab", "--path=z", "--", "a"] } : Json),
  )
}

///|
test "differential 719" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-o", "b", "--output=x", "--list", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 720" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-o", "b", "--output=x", "--list", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 721" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["a", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 722" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a", "-v"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a", "-v"] } : Json),
  )
}

///|
test "differential 723" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--path=z", "--", "data", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 724" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--path=z", "--", "data", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 725" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["", "", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 726" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["", "", "-o"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["", "", "-o"] } : Json),
  )
}

///|
test "differential 727" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--output=x", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 728" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--output=x", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 729" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--unknown", "中文", "", "-o", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 730" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--unknown", "中文", "", "-o", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 731" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--unknown", "--list", "-v", "b", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 732" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--unknown", "--list", "-v", "b", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 733" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 734" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 735" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["add", "--path=z", "", "-o", "b", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 736" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add", "--path=z", "", "-o", "b", "b"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["add", "--path=z", "", "-o", "b", "b"] } : Json),
  )
}

///|
test "differential 737" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 738" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 739" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 740" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 741" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--lis", "a", "add", "add", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 742" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--lis", "a", "add", "add", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 743" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["中文", "add", "--"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["中文", "add", "--"] } : Json),
  )
}

///|
test "differential 744" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["中文", "add", "--"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["中文", "add", "--"] } : Json),
  )
}

///|
test "differential 745" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 746" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v"] } : Json),
  )
}

///|
test "differential 747" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--lis", "--unknown", "--", "--", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 748" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--lis", "--unknown", "--", "--", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 749" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v", "", "", "-o", "--output=x"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-v", "", "", "-o", "--output=x"] } : Json),
  )
}

///|
test "differential 750" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-v", "", "", "-o", "--output=x"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-v", "", "", "-o", "--output=x"] } : Json),
  )
}

///|
test "differential 751" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add"], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["add"] } : Json),
  )
}

///|
test "differential 752" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["add"] } : Json),
  )
}

///|
test "differential 753" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-ab", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 754" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-ab", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 755" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["data", "-v", "中文", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 756" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["data", "-v", "中文", "--path=z"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["data", "-v", "中文", "--path=z"] } : Json),
  )
}

///|
test "differential 757" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["b", "--lis", "--output=x", "--list", "add", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 758" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(
      ["b", "--lis", "--output=x", "--list", "add", "b"],
      options_first=true,
    )
    .to_json(),
    (
      { "--": false, "<x>": ["b", "--lis", "--output=x", "--list", "add", "b"] } :
      Json),
  )
}

///|
test "differential 759" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--lis", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 760" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--lis", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 761" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--list", "--lis", "data", "--unknown", "", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 762" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["--list", "--lis", "data", "--unknown", "", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 763" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["", "-v", "add", "", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 764" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["", "-v", "add", "", "中文"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["", "-v", "add", "", "中文"] } : Json),
  )
}

///|
test "differential 765" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-v", "add", "--output=x", "-v", "a", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 766" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-v", "add", "--output=x", "-v", "a", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 767" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 768" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 769" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 770" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 771" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse(["-v"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 772" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse(["-v"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 773" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 774" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 775" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["a", "--lis", "-o", "data", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 776" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a", "--lis", "-o", "data", "-v"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a", "--lis", "-o", "data", "-v"] } : Json),
  )
}

///|
test "differential 777" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add", ""], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["add", ""] } : Json),
  )
}

///|
test "differential 778" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add", ""], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["add", ""] } : Json),
  )
}

///|
test "differential 779" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["a", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 780" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["a", "--lis"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["a", "--lis"] } : Json),
  )
}

///|
test "differential 781" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["中文", "中文", ""], options_first=false)
    .to_json(),
    ({ "--": false, "<x>": ["中文", "中文", ""] } : Json),
  )
}

///|
test "differential 782" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["中文", "中文", ""], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["中文", "中文", ""] } : Json),
  )
}

///|
test "differential 783" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "--path=z", "data", "data", "--"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["--path=z", "data", "data", "--"] } : Json),
  )
}

///|
test "differential 784" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "--path=z", "data", "data", "--"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["--path=z", "data", "data", "--"] } : Json),
  )
}

///|
test "differential 785" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["add", "data", "a", "-o", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 786" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["add", "data", "a", "-o", "--"], options_first=true)
    .to_json(),
    ({ "--": false, "<x>": ["add", "data", "a", "-o", "--"] } : Json),
  )
}

///|
test "differential 787" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 788" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 789" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 790" {
  assert_true(
    (Ok(Parser::new("Usage: p [--] <x>...").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 791" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "--", "-ab", "data"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["--", "-ab", "data"] } : Json),
  )
}

///|
test "differential 792" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "--", "-ab", "data"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["--", "-ab", "data"] } : Json),
  )
}

///|
test "differential 793" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-ab", "中文", "--lis", "-v", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 794" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["-ab", "中文", "--lis", "-v", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 795" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [--] <x>...").parse(
        ["add", "--list", "--unknown", "--unknown", "a", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 796" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(
      ["add", "--list", "--unknown", "--unknown", "a", "-o"],
      options_first=true,
    )
    .to_json(),
    (
      {
        "--": false,
        "<x>": ["add", "--list", "--unknown", "--unknown", "a", "-o"],
      } : Json),
  )
}

///|
test "differential 797" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "--", "-o"], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["--", "-o"] } : Json),
  )
}

///|
test "differential 798" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "--", "-o"], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["--", "-o"] } : Json),
  )
}

///|
test "differential 799" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-ab", "data", "b", ""], options_first=false)
    .to_json(),
    ({ "--": true, "<x>": ["-ab", "data", "b", ""] } : Json),
  )
}

///|
test "differential 800" {
  assert_eq(
    Parser::new("Usage: p [--] <x>...")
    .parse(["--", "-ab", "data", "b", ""], options_first=true)
    .to_json(),
    ({ "--": true, "<x>": ["-ab", "data", "b", ""] } : Json),
  )
}

///|
test "differential 801" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 802" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 803" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 804" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 805" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 806" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 807" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 808" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 809" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 810" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 811" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 812" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 813" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 814" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 815" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 816" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 817" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 818" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 819" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 820" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 821" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 822" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 823" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 824" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 825" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 826" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 827" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 828" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 829" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 830" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 831" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 832" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 833" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 834" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 835" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 836" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 837" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 838" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 839" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 840" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 841" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 842" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 843" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 844" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "a" } : Json),
  )
}

///|
test "differential 845" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 846" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--out=b", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "b", "<x>": "a" } : Json),
  )
}

///|
test "differential 847" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=false)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 848" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["-qofoo", "a"], options_first=true)
    .to_json(),
    ({ "--quiet": true, "--output": "foo", "<x>": "a" } : Json),
  )
}

///|
test "differential 849" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["--path=z", "--list", "-v", "--output=x", "-ab", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 850" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["--path=z", "--list", "-v", "--output=x", "-ab", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 851" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-o", "-v", "a", "--output=x", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 852" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-o", "-v", "a", "--output=x", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 853" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--path=z", "--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 854" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--path=z", "--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 855" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 856" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 857" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--output=x", "--path=z", "data"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 858" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--output=x", "--path=z", "data"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 859" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 860" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 861" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["--path=z", "--output=x", "--lis", "--list", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 862" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["--path=z", "--output=x", "--lis", "--list", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 863" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--lis", "--", "--lis"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 864" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--lis", "--", "--lis"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 865" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "b", "中文", "--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 866" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "b", "中文", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 867" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["a", "--output=x"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "x", "<x>": "a" } : Json),
  )
}

///|
test "differential 868" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 869" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--unknown", "--list", "中文", "中文"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 870" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--unknown", "--list", "中文", "中文"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 871" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "--", "add", "-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 872" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "--", "add", "-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 873" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "中文", "-v", "--list", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 874" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "中文", "-v", "--list", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 875" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["", "a", "data", "add", "a", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 876" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["", "a", "data", "add", "a", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 877" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["add", "中文", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 878" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["add", "中文", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 879" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "-o", "--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 880" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "-o", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 881" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["add", "", "-o", "--output=x", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 882" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["add", "", "-o", "--output=x", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 883" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "", "add", "--lis"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 884" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "", "add", "--lis"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 885" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["", "-ab"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 886" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["", "-ab"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 887" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--path=z", "中文", "--", "中文"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 888" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--path=z", "中文", "--", "中文"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 889" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["data", "b", "--output=x", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 890" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["data", "b", "--output=x", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 891" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "--path=z", "a", "--path=z"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 892" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "--path=z", "a", "--path=z"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 893" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 894" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 895" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "中文", "--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 896" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "中文", "--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 897" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--list", "-v", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 898" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--list", "-v", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 899" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "--path=z", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 900" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "--path=z", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 901" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["", "a", "--lis"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 902" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["", "a", "--lis"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 903" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--list", "-ab", "-o"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 904" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--list", "-ab", "-o"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 905" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["data", "b", "--output=x", "--list", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 906" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["data", "b", "--output=x", "--list", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 907" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "-o", "--", "a", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 908" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "-o", "--", "a", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 909" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["data", "--list", "中文", "b", "-ab"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 910" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["data", "--list", "中文", "b", "-ab"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 911" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "data", "--path=z", "-ab", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 912" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "--", "data", "--path=z", "-ab", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 913" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "--output=x", "--list", "中文", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 914" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["a", "--output=x", "--list", "中文", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 915" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--output=x", "--unknown", "--path=z"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 916" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--output=x", "--unknown", "--path=z"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 917" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 918" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 919" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "--output=x", "中文"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 920" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-ab", "--output=x", "中文"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 921" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 922" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 923" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--path=z", "--list", "--lis", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 924" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--path=z", "--list", "--lis", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 925" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["中文", "-o", "--path=z"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "--path=z", "<x>": "中文" } : Json),
  )
}

///|
test "differential 926" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["中文", "-o", "--path=z"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 927" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--list", "--output=x", "-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 928" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["--list", "--output=x", "-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 929" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["中文", "--unknown", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 930" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["中文", "--unknown", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 931" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-o", "--path=z"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 932" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-o", "--path=z"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 933" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["b"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "b" } : Json),
  )
}

///|
test "differential 934" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["b"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "b" } : Json),
  )
}

///|
test "differential 935" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 936" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 937" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--"], options_first=false)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "--" } : Json),
  )
}

///|
test "differential 938" {
  assert_eq(
    Parser::new(
      "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
    )
    .parse(["--"], options_first=true)
    .to_json(),
    ({ "--quiet": false, "--output": "out", "<x>": "--" } : Json),
  )
}

///|
test "differential 939" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "-ab", "--", "--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 940" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["b", "-ab", "--", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 941" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 942" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(["-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 943" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["--lis", "--list", "--output=x", "-o", "b", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 944" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet",
      ).parse(
        ["--lis", "--list", "--output=x", "-o", "b", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 945" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 946" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 947" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 948" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 949" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 950" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 951" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 952" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 953" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 954" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 955" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 956" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 957" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 958" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 959" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 960" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 961" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 962" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 963" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 964" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 965" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 966" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 967" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 968" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 969" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 970" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 971" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 972" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 973" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 974" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 975" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 976" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 977" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 978" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 979" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 980" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 981" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 982" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 983" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 984" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 985" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 986" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 987" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 988" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 989" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=false)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 990" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a"], options_first=true)
    .to_json(),
    ({ "--path": ["a"] } : Json),
  )
}

///|
test "differential 991" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=false)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 992" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=a", "--path=b"], options_first=true)
    .to_json(),
    ({ "--path": ["a", "b"] } : Json),
  )
}

///|
test "differential 993" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "add"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 994" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "add"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 995" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["data", "add", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 996" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["data", "add", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 997" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 998" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 999" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1000" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1001" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["--list", "--list", "", "--unknown", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1002" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--list", "--list", "", "--unknown", "data"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1003" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "--path=z", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1004" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "--path=z", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1005" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "-o", "-v", "--list", "-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1006" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "-o", "-v", "--list", "-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1007" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["b", "--unknown", "--lis", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1008" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["b", "--unknown", "--lis", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1009" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1010" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1011" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o", "中文", "--unknown", "--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1012" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o", "中文", "--unknown", "--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1013" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["--output=x", "--unknown", "-o", "--path=z", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1014" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["--output=x", "--unknown", "-o", "--path=z", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1015" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1016" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1017" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1018" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1019" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["data", "add", "a", "-o", "--path=z", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1020" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["data", "add", "a", "-o", "--path=z", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1021" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1022" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1023" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1024" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1025" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--unknown", "-ab", "a", "-ab", "-v", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1026" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--unknown", "-ab", "a", "-ab", "-v", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1027" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "-v", "-ab"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1028" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "-v", "-ab"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1029" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o", "--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1030" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o", "--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1031" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--path=z", "add", "--lis", "", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1032" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--path=z", "add", "--lis", "", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1033" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "--list", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1034" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "--list", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1035" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1036" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1037" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["-v", "data", "--lis", "b", "b", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1038" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-v", "data", "--lis", "b", "b", "--path=z"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1039" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "-o", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1040" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-ab", "-o", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1041" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--list", "--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1042" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--list", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1043" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1044" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1045" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1046" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse([], options_first=true)
    .to_json(),
    ({ "--path": ["x", "y"] } : Json),
  )
}

///|
test "differential 1047" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["data"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1048" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["data"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1049" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "-o"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1050" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "-o"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1051" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["中文", "--lis", "add", "中文", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1052" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["中文", "--lis", "add", "中文", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1053" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["b", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1054" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["b", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1055" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--path=z", "a", "--path=z", "-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1056" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--path=z", "a", "--path=z", "-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1057" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-v", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1058" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-v", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1059" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["add", "--path=z", "add", "a", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1060" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["add", "--path=z", "add", "a", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1061" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--", "", "--output=x", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1062" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--", "", "--output=x", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1063" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--path=z", "-o", "a", "a", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1064" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--path=z", "-o", "a", "a", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1065" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "--lis", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1066" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "--lis", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1067" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--output=x", "--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1068" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--output=x", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1069" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1070" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1071" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "--output=x"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1072" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--lis", "--output=x"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1073" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=z"], options_first=false)
    .to_json(),
    ({ "--path": ["z"] } : Json),
  )
}

///|
test "differential 1074" {
  assert_eq(
    Parser::new(
      "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
    )
    .parse(["--path=z"], options_first=true)
    .to_json(),
    ({ "--path": ["z"] } : Json),
  )
}

///|
test "differential 1075" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["--lis", "-v", "--output=x", "-o", "--output=x", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1076" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(
        ["--lis", "-v", "--output=x", "-o", "--output=x", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1077" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse([""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1078" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse([""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1079" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--output=x", "-ab", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1080" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--output=x", "-ab", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1081" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--unknown", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1082" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--unknown", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1083" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--output=x", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1084" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["--output=x", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1085" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["中文", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1086" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["中文", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1087" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o", "--lis", "data"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1088" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]",
      ).parse(["-o", "--lis", "data"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1089" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1090" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1091" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1092" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1093" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1094" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1095" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1096" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1097" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1098" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1099" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1100" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1101" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1102" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1103" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1104" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1105" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1106" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1107" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1108" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1109" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1110" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1111" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1112" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1113" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1114" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1115" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1116" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1117" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=false)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1118" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--list"], options_first=true)
    .to_json(),
    ({ "--list": true, "--listen": false } : Json),
  )
}

///|
test "differential 1119" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=false)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1120" {
  assert_eq(
    Parser::new(
      "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
    )
    .parse(["--liste"], options_first=true)
    .to_json(),
    ({ "--list": false, "--listen": true } : Json),
  )
}

///|
test "differential 1121" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data", "--lis", "-o", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1122" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data", "--lis", "-o", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1123" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--lis", "--lis", "data", "-ab"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1124" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--lis", "--lis", "data", "-ab"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1125" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1126" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1127" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a", "--unknown", "中文", "data", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1128" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a", "--unknown", "中文", "data", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1129" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["中文", "--", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1130" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["中文", "--", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1131" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--list", "--", "--output=x", "--output=x", "中文", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1132" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--list", "--", "--output=x", "--output=x", "中文", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1133" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--path=z", "--output=x", "--unknown", "--", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1134" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--path=z", "--output=x", "--unknown", "--", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1135" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--lis", "--lis", "--unknown", "data", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1136" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--lis", "--lis", "--unknown", "data", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1137" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data", "--lis", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1138" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data", "--lis", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1139" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["-v", "--", "", "中文"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1140" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["-v", "--", "", "中文"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1141" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data", "-v", "中文", "b", ""], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1142" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data", "-v", "中文", "b", ""], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1143" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1144" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1145" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1146" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1147" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--path=z", "--unknown", "--path=z", "中文", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1148" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--path=z", "--unknown", "--path=z", "中文", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1149" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["add", "-o", "", "-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1150" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["add", "-o", "", "-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1151" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["-ab", "--lis", "--lis"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1152" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["-ab", "--lis", "--lis"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1153" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1154" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1155" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1156" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1157" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1158" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1159" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["b", "add", "--list", "data", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1160" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["b", "add", "--list", "data", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1161" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1162" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1163" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--unknown", "data", "data", "--path=z", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1164" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--unknown", "data", "data", "--path=z", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1165" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1166" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1167" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a", "a", "--output=x", "add", "--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1168" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a", "a", "--output=x", "add", "--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1169" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1170" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1171" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1172" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1173" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1174" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["data"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1175" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--output=x", "--", "b"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1176" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--output=x", "--", "b"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1177" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["", "--unknown", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1178" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["", "--unknown", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1179" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["中文", "b", "-o"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1180" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["中文", "b", "-o"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1181" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["", "-ab", "-v", "--path=z", "--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1182" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["", "-ab", "-v", "--path=z", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1183" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["-v"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1184" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["-v"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1185" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["中文", "-ab", "--path=z", "--"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1186" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["中文", "-ab", "--path=z", "--"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1187" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1188" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1189" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1190" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1191" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["b", "add", "add", "data"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1192" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["b", "add", "add", "data"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1193" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--list", "--", "add", "--lis", "--lis", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1194" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--list", "--", "add", "--lis", "--lis", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1195" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--list", "-v", "b", "-ab", "-ab"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1196" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--list", "-v", "b", "-ab", "-ab"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1197" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--", "中文", "--list"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1198" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--", "中文", "--list"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1199" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["", "data", "-ab", "add", "-o", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1200" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["", "data", "-ab", "add", "-o", "--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1201" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["a", "--unknown", "data", "data", "--lis", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1202" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["a", "--unknown", "data", "data", "--lis", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1203" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1204" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1205" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1206" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1207" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1208" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1209" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--path=z", "a", "--unknown", "--unknown", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1210" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(
        ["--path=z", "a", "--unknown", "--unknown", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1211" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--list", "-o", "-v", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1212" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["--list", "-o", "-v", "a"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1213" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a", "中文", "add"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1214" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse(["a", "中文", "add"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1215" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1216" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen",
      ).parse([], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1217" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1218" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1219" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1220" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1221" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1222" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1223" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1224" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1225" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1226" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1227" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1228" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1229" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1230" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1231" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1232" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1233" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1234" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1235" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1236" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1237" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1238" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1239" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1240" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1241" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1242" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1243" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1244" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1245" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1246" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1247" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1248" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1249" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1250" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1251" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1252" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1253" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1254" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1255" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1256" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1257" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1258" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1259" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1260" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1261" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1262" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": null } : Json),
  )
}

///|
test "differential 1263" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1264" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "b" } : Json),
  )
}

///|
test "differential 1265" {
  assert_true(
    (Ok(Parser::new("Usage: p [<x>] [<y>]").parse(["-o"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1266" {
  assert_true(
    (Ok(Parser::new("Usage: p [<x>] [<y>]").parse(["-o"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1267" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "", "b", "-ab", "--list", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1268" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "", "b", "-ab", "--list", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1269" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--", "a", "add", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1270" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--", "a", "add", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1271" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1272" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1273" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--list", "--unknown", "-v", "-ab", "--", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1274" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--list", "--unknown", "-v", "-ab", "--", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1275" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1276" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1277" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1278" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1279" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "add", "--output=x", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1280" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "add", "--output=x", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1281" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["a", "--", "中文", "中文", "--path=z", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1282" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["a", "--", "中文", "中文", "--path=z", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1283" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--list", "data", "--unknown", "-v", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1284" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--list", "data", "--unknown", "-v", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1285" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-ab", "b", "--output=x", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1286" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-ab", "b", "--output=x", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1287" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "-ab", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1288" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "-ab", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1289" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "add", "b", "中文", "data", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1290" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "add", "b", "中文", "data", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1291" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "b", "-o", "add", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1292" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "b", "-o", "add", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1293" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "b", "-v", "--output=x", "", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1294" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "b", "-v", "--output=x", "", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1295" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--", "data", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1296" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--", "data", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1297" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1298" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1299" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1300" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1301" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1302" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1303" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "--list", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1304" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "--list", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1305" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "data"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "data" } : Json),
  )
}

///|
test "differential 1306" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "data"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "data" } : Json),
  )
}

///|
test "differential 1307" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "data", "--list", "add", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1308" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "data", "--list", "add", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1309" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "-ab", "-v", "-v", "a", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1310" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "-ab", "-v", "-v", "a", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1311" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["中文", "--path=z", "--list", "--", "--list", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1312" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["中文", "--path=z", "--list", "--", "--list", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1313" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1314" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["data", "--list"], options_first=true)
    .to_json(),
    ({ "<x>": "data", "<y>": "--list" } : Json),
  )
}

///|
test "differential 1315" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "b", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1316" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["data", "b", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1317" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["add", "data"], options_first=false)
    .to_json(),
    ({ "<x>": "add", "<y>": "data" } : Json),
  )
}

///|
test "differential 1318" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["add", "data"], options_first=true)
    .to_json(),
    ({ "<x>": "add", "<y>": "data" } : Json),
  )
}

///|
test "differential 1319" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["--"], options_first=false)
    .to_json(),
    ({ "<x>": "--", "<y>": null } : Json),
  )
}

///|
test "differential 1320" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["--"], options_first=true)
    .to_json(),
    ({ "<x>": "--", "<y>": null } : Json),
  )
}

///|
test "differential 1321" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--output=x", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1322" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--output=x", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1323" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-o", "--unknown", "add", "b", "data", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1324" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-o", "--unknown", "add", "b", "data", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1325" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "add"], options_first=false)
    .to_json(),
    ({ "<x>": "a", "<y>": "add" } : Json),
  )
}

///|
test "differential 1326" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["a", "add"], options_first=true)
    .to_json(),
    ({ "<x>": "a", "<y>": "add" } : Json),
  )
}

///|
test "differential 1327" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "-v", "-o", "--output=x", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1328" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "-v", "-o", "--output=x", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1329" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["", "-ab", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1330" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["", "-ab", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1331" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-ab", "--list", "--unknown", "-ab", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1332" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-ab", "--list", "--unknown", "-ab", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1333" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["b", ""], options_first=false)
    .to_json(),
    ({ "<x>": "b", "<y>": "" } : Json),
  )
}

///|
test "differential 1334" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["b", ""], options_first=true)
    .to_json(),
    ({ "<x>": "b", "<y>": "" } : Json),
  )
}

///|
test "differential 1335" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["中文", "", "--path=z", "", "data", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1336" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["中文", "", "--path=z", "", "data", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1337" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-o", "a", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1338" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["-o", "a", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1339" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "--list", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1340" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--unknown", "--list", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1341" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["a", "a", "--list", "--list", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1342" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["a", "a", "--list", "--list", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1343" {
  assert_true(
    (Ok(Parser::new("Usage: p [<x>] [<y>]").parse(["-o"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1344" {
  assert_true(
    (Ok(Parser::new("Usage: p [<x>] [<y>]").parse(["-o"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1345" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["add", "a", "--path=z", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1346" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["add", "a", "--path=z", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1347" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["add", "", "-o", "-v", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1348" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["add", "", "-o", "-v", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1349" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=false).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1350" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]").parse([], options_first=true).to_json(),
    ({ "<x>": null, "<y>": null } : Json),
  )
}

///|
test "differential 1351" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["add", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1352" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["add", "--path=z"], options_first=true)
    .to_json(),
    ({ "<x>": "add", "<y>": "--path=z" } : Json),
  )
}

///|
test "differential 1353" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--path=z", "中文", "b", "--output=x", "data", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1354" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--path=z", "中文", "b", "--output=x", "data", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1355" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--", "--output=x", "", "a", "", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1356" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--", "--output=x", "", "a", "", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1357" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["data", "b"], options_first=false)
    .to_json(),
    ({ "<x>": "data", "<y>": "b" } : Json),
  )
}

///|
test "differential 1358" {
  assert_eq(
    Parser::new("Usage: p [<x>] [<y>]")
    .parse(["data", "b"], options_first=true)
    .to_json(),
    ({ "<x>": "data", "<y>": "b" } : Json),
  )
}

///|
test "differential 1359" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "add", "--lis", "--output=x", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1360" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [<x>] [<y>]").parse(
        ["--lis", "add", "--lis", "--output=x", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1361" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1362" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1363" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1364" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1365" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1366" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1367" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1368" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1369" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1370" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1371" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1372" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1373" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1374" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1375" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1376" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1377" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1378" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1379" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1380" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1381" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1382" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1383" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1384" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1385" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1386" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1387" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1388" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1389" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1390" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1391" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1392" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1393" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1394" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1395" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1396" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1397" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1398" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1399" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1400" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1401" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1402" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1403" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1404" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 0 } : Json),
  )
}

///|
test "differential 1405" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1406" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 1 } : Json),
  )
}

///|
test "differential 1407" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=false)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1408" {
  assert_eq(
    Parser::new("Usage: p (a b | a) [b]")
    .parse(["a", "b", "b"], options_first=true)
    .to_json(),
    ({ "a": true, "b": 2 } : Json),
  )
}

///|
test "differential 1409" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--lis", "--output=x", "-v", "b", "--lis", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1410" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--lis", "--output=x", "-v", "b", "--lis", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1411" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([""], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1412" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([""], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1413" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--list", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1414" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--list", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1415" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "-o", "中文", "-v", "中文", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1416" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "-o", "中文", "-v", "中文", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1417" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["b", "b", "中文", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1418" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["b", "b", "中文", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1419" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["data", "--output=x", "-v", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1420" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["data", "--output=x", "-v", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1421" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--unknown", "--unknown", "--path=z", "--list", "--path=z", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1422" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--unknown", "--unknown", "--path=z", "--list", "--path=z", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1423" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "中文", "--unknown", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1424" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "中文", "--unknown", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1425" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["中文", "--lis", "", "-v", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1426" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["中文", "--lis", "", "-v", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1427" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1428" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1429" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "--list", "data", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1430" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "--list", "data", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1431" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1432" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1433" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1434" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1435" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1436" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1437" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["data", "data", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1438" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["data", "data", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1439" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1440" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1441" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "--lis", "--list", "--path=z"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1442" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "--lis", "--list", "--path=z"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1443" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--output=x", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1444" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--output=x", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1445" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1446" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1447" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--unknown", "-ab", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1448" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--unknown", "-ab", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1449" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "--unknown", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1450" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "--unknown", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1451" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "b", "-v", "add", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1452" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "b", "-v", "add", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1453" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--lis", "data", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1454" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--lis", "data", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1455" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "--", "--list", "add", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1456" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "--", "--list", "add", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1457" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "--", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1458" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "--", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1459" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["add", "", "-ab", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1460" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["add", "", "-ab", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1461" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["data", "--lis", "--unknown", "-ab", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1462" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["data", "--lis", "--unknown", "-ab", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1463" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--", "-v", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1464" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--", "-v", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1465" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["", "--output=x", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1466" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["", "--output=x", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1467" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["add", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1468" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["add", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1469" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1470" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1471" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-v", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1472" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-v", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1473" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["b", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1474" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["b", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1475" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1476" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1477" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse(["b"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1478" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse(["b"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1479" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-o", "--", "a", "", "-v", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1480" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-o", "--", "a", "", "-v", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1481" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1482" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1483" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["b", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1484" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["b", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1485" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-v", "--output=x", "--lis", "add", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1486" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-v", "--output=x", "--lis", "add", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1487" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["a", "a", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1488" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["a", "a", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1489" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--", "--list", "a", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1490" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "--", "--list", "a", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1491" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1492" {
  assert_true(
    (Ok(Parser::new("Usage: p (a b | a) [b]").parse([], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1493" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["add", "--", "add", "-o", "-o", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1494" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["add", "--", "add", "-o", "-o", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1495" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "-o", "中文", "data", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1496" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["-ab", "-o", "中文", "data", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1497" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--list", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1498" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--list", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1499" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "-ab", "--lis", "data", "a", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1500" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--output=x", "-ab", "--lis", "data", "a", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1501" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--", "", "--path=z", "--", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1502" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--", "", "--path=z", "--", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1503" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "中文", "-o", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1504" {
  assert_true(
    (Ok(
      Parser::new("Usage: p (a b | a) [b]").parse(
        ["--path=z", "中文", "-o", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1505" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1506" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1507" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1508" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1509" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1510" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1511" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1512" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1513" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1514" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1515" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1516" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1517" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1518" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1519" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1520" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1521" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1522" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1523" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1524" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1525" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1526" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1527" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1528" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1529" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1530" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1531" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1532" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1533" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1534" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1535" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1536" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1537" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1538" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1539" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1540" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1541" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1542" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1543" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1544" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1545" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1546" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1547" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1548" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1549" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=false)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1550" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-abab"], options_first=true)
    .to_json(),
    ({ "-a": 2, "-b": 2 } : Json),
  )
}

///|
test "differential 1551" {
  assert_eq(
    Parser::new("Usage: p [-ab]...")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1552" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse(["-a"], options_first=true).to_json(),
    ({ "-a": 1, "-b": 0 } : Json),
  )
}

///|
test "differential 1553" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1554" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1555" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["b", "add"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1556" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["b", "add"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1557" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["data", "--", "--list", "--", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1558" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["data", "--", "--list", "--", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1559" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["b", "--list", "--path=z", "--unknown", "--output=x", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1560" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["b", "--list", "--path=z", "--unknown", "--output=x", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1561" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--lis", "-o", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1562" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--lis", "-o", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1563" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["-v"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1564" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["-v"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1565" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "-v", "--list", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1566" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "-v", "--list", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1567" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--list", "a", "-v", "-ab", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1568" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--list", "a", "-v", "-ab", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1569" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "-v", "中文", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1570" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "-v", "中文", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1571" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["-o", "a"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1572" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["-o", "a"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1573" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["b", "--path=z", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1574" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["b", "--path=z", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1575" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1576" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1577" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["add", "--lis", "--lis", "a", "-ab", "data"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1578" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["add", "--lis", "--lis", "a", "-ab", "data"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1579" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "中文", "-ab", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1580" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "中文", "-ab", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1581" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["-v"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1582" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["-v"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1583" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["data"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1584" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["data"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1585" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["a", "-ab", "a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1586" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["a", "-ab", "a"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1587" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1588" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1589" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "--output=x", "--path=z", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1590" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "--output=x", "--path=z", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1591" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "a", "data", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1592" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "a", "data", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1593" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["", "--lis", "-ab", "add", "add"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1594" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["", "--lis", "-ab", "add", "add"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1595" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "", "", "--lis", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1596" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "", "", "--lis", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1597" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--list", "--output=x", "--lis", "a", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1598" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--list", "--output=x", "--lis", "a", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1599" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "--", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1600" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "--", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1601" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "--lis", "--list", "", "b", "--"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1602" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "--lis", "--list", "", "b", "--"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1603" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-v", "--", "--", "--unknown", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1604" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-v", "--", "--", "--unknown", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1605" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--lis"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1606" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--lis"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1607" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--unknown", "data", "add", "--lis", "-ab"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1608" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--unknown", "data", "add", "--lis", "-ab"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1609" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "-v", "data", "b", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1610" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "-v", "data", "b", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1611" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--list", "-ab", "--path=z", "a", "b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1612" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--list", "-ab", "--path=z", "a", "b"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1613" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["中文"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1614" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["中文"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1615" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1616" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--output=x", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1617" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["add"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1618" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["add"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1619" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["a", "--", "add", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1620" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["a", "--", "add", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1621" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["", "a", "-o"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1622" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["", "a", "-o"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1623" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["a", "", "--unknown", "--list"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1624" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["a", "", "--unknown", "--list"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1625" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "data", "--", "-v", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1626" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "data", "--", "-v", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1627" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1628" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1629" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--path=z", "--output=x", "a", "b", "--list", "-v"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1630" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--path=z", "--output=x", "a", "b", "--list", "-v"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1631" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["--unknown"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1632" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(["--unknown"], options_first=true),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1633" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=false).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1634" {
  assert_eq(
    Parser::new("Usage: p [-ab]...").parse([], options_first=true).to_json(),
    ({ "-a": 0, "-b": 0 } : Json),
  )
}

///|
test "differential 1635" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--output=x", "add", "-o", "", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1636" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["--lis", "--output=x", "add", "-o", "", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1637" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["--"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1638" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["--"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1639" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "--output=x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1640" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-ab", "--output=x"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1641" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["add"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1642" {
  assert_true(
    (Ok(Parser::new("Usage: p [-ab]...").parse(["add"], options_first=true)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1643" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["", "--unknown"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1644" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["", "--unknown"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1645" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-o", "-o", "--lis", "data", ""],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1646" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["-o", "-o", "--lis", "data", ""],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1647" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "-ab", "中文", "", "中文"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "differential 1648" {
  assert_true(
    (Ok(
      Parser::new("Usage: p [-ab]...").parse(
        ["中文", "-ab", "中文", "", "中文"],
        options_first=true,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}
