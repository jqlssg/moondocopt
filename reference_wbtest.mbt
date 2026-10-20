// Generated from docopt 0.6.2 MIT fixtures by scripts/generate_oracles.py.

///|
test "upstream 1" {
  assert_eq(
    Parser::new("Usage: prog\n\n").parse([], options_first=false).to_json(),
    ({} : Json),
  )
}

///|
test "upstream 2" {
  assert_true(
    (Ok(Parser::new("Usage: prog\n\n").parse(["--xxx"], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 3" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -a  All.\n\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "-a": false } : Json),
  )
}

///|
test "upstream 4" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -a  All.\n\n")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": true } : Json),
  )
}

///|
test "upstream 5" {
  assert_true(
    (Ok(
      Parser::new("Usage: prog [options]\n\nOptions: -a  All.\n\n").parse(
        ["-x"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 6" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: --all  All.\n\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "--all": false } : Json),
  )
}

///|
test "upstream 7" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: --all  All.\n\n")
    .parse(["--all"], options_first=false)
    .to_json(),
    ({ "--all": true } : Json),
  )
}

///|
test "upstream 8" {
  assert_true(
    (Ok(
      Parser::new("Usage: prog [options]\n\nOptions: --all  All.\n\n").parse(
        ["--xxx"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 9" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -v, --verbose  Verbose.\n\n")
    .parse(["--verbose"], options_first=false)
    .to_json(),
    ({ "--verbose": true } : Json),
  )
}

///|
test "upstream 10" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -v, --verbose  Verbose.\n\n")
    .parse(["--ver"], options_first=false)
    .to_json(),
    ({ "--verbose": true } : Json),
  )
}

///|
test "upstream 11" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -v, --verbose  Verbose.\n\n")
    .parse(["-v"], options_first=false)
    .to_json(),
    ({ "--verbose": true } : Json),
  )
}

///|
test "upstream 12" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -p PATH\n\n")
    .parse(["-p", "home/"], options_first=false)
    .to_json(),
    ({ "-p": "home/" } : Json),
  )
}

///|
test "upstream 13" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: -p PATH\n\n")
    .parse(["-phome/"], options_first=false)
    .to_json(),
    ({ "-p": "home/" } : Json),
  )
}

///|
test "upstream 14" {
  assert_true(
    (Ok(
      Parser::new("Usage: prog [options]\n\nOptions: -p PATH\n\n").parse(
        ["-p"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 15" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: --path <path>\n\n")
    .parse(["--path", "home/"], options_first=false)
    .to_json(),
    ({ "--path": "home/" } : Json),
  )
}

///|
test "upstream 16" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: --path <path>\n\n")
    .parse(["--path=home/"], options_first=false)
    .to_json(),
    ({ "--path": "home/" } : Json),
  )
}

///|
test "upstream 17" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: --path <path>\n\n")
    .parse(["--pa", "home/"], options_first=false)
    .to_json(),
    ({ "--path": "home/" } : Json),
  )
}

///|
test "upstream 18" {
  assert_eq(
    Parser::new("Usage: prog [options]\n\nOptions: --path <path>\n\n")
    .parse(["--pa=home/"], options_first=false)
    .to_json(),
    ({ "--path": "home/" } : Json),
  )
}

///|
test "upstream 19" {
  assert_true(
    (Ok(
      Parser::new("Usage: prog [options]\n\nOptions: --path <path>\n\n").parse(
        ["--path"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 20" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions: -p PATH, --path=<path>  Path to files.\n\n",
    )
    .parse(["-proot"], options_first=false)
    .to_json(),
    ({ "--path": "root" } : Json),
  )
}

///|
test "upstream 21" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions:    -p --path PATH  Path to files.\n\n",
    )
    .parse(["-p", "root"], options_first=false)
    .to_json(),
    ({ "--path": "root" } : Json),
  )
}

///|
test "upstream 22" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions:    -p --path PATH  Path to files.\n\n",
    )
    .parse(["--path", "root"], options_first=false)
    .to_json(),
    ({ "--path": "root" } : Json),
  )
}

///|
test "upstream 23" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions:\n -p PATH  Path to files [default: ./]\n\n",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "-p": "./" } : Json),
  )
}

///|
test "upstream 24" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions:\n -p PATH  Path to files [default: ./]\n\n",
    )
    .parse(["-phome"], options_first=false)
    .to_json(),
    ({ "-p": "home" } : Json),
  )
}

///|
test "upstream 25" {
  assert_eq(
    Parser::new(
      "UsAgE: prog [options]\n\nOpTiOnS: --path=<files>  Path to files\n                [dEfAuLt: /root]\n\n",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--path": "/root" } : Json),
  )
}

///|
test "upstream 26" {
  assert_eq(
    Parser::new(
      "UsAgE: prog [options]\n\nOpTiOnS: --path=<files>  Path to files\n                [dEfAuLt: /root]\n\n",
    )
    .parse(["--path=home"], options_first=false)
    .to_json(),
    ({ "--path": "home" } : Json),
  )
}

///|
test "upstream 27" {
  assert_eq(
    Parser::new(
      "usage: prog [options]\n\noptions:\n    -a        Add\n    -r        Remote\n    -m <msg>  Message\n\n",
    )
    .parse(["-a", "-r", "-m", "Hello"], options_first=false)
    .to_json(),
    ({ "-a": true, "-r": true, "-m": "Hello" } : Json),
  )
}

///|
test "upstream 28" {
  assert_eq(
    Parser::new(
      "usage: prog [options]\n\noptions:\n    -a        Add\n    -r        Remote\n    -m <msg>  Message\n\n",
    )
    .parse(["-armyourass"], options_first=false)
    .to_json(),
    ({ "-a": true, "-r": true, "-m": "yourass" } : Json),
  )
}

///|
test "upstream 29" {
  assert_eq(
    Parser::new(
      "usage: prog [options]\n\noptions:\n    -a        Add\n    -r        Remote\n    -m <msg>  Message\n\n",
    )
    .parse(["-a", "-r"], options_first=false)
    .to_json(),
    ({ "-a": true, "-r": true, "-m": null } : Json),
  )
}

///|
test "upstream 30" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions: --version\n         --verbose\n\n",
    )
    .parse(["--version"], options_first=false)
    .to_json(),
    ({ "--version": true, "--verbose": false } : Json),
  )
}

///|
test "upstream 31" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions: --version\n         --verbose\n\n",
    )
    .parse(["--verbose"], options_first=false)
    .to_json(),
    ({ "--version": false, "--verbose": true } : Json),
  )
}

///|
test "upstream 32" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: prog [options]\n\nOptions: --version\n         --verbose\n\n",
      ).parse(["--ver"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 33" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nOptions: --version\n         --verbose\n\n",
    )
    .parse(["--verb"], options_first=false)
    .to_json(),
    ({ "--version": false, "--verbose": true } : Json),
  )
}

///|
test "upstream 34" {
  assert_eq(
    Parser::new(
      "usage: prog [-a -r -m <msg>]\n\noptions:\n -a        Add\n -r        Remote\n -m <msg>  Message\n\n",
    )
    .parse(["-armyourass"], options_first=false)
    .to_json(),
    ({ "-a": true, "-r": true, "-m": "yourass" } : Json),
  )
}

///|
test "upstream 35" {
  assert_eq(
    Parser::new(
      "usage: prog [-armmsg]\n\noptions: -a        Add\n         -r        Remote\n         -m <msg>  Message\n\n",
    )
    .parse(["-a", "-r", "-m", "Hello"], options_first=false)
    .to_json(),
    ({ "-a": true, "-r": true, "-m": "Hello" } : Json),
  )
}

///|
test "upstream 36" {
  assert_eq(
    Parser::new("usage: prog -a -b\n\noptions:\n -a\n -b\n\n")
    .parse(["-a", "-b"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 37" {
  assert_eq(
    Parser::new("usage: prog -a -b\n\noptions:\n -a\n -b\n\n")
    .parse(["-b", "-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 38" {
  assert_true(
    (Ok(
      Parser::new("usage: prog -a -b\n\noptions:\n -a\n -b\n\n").parse(
        ["-a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 39" {
  assert_true(
    (Ok(
      Parser::new("usage: prog -a -b\n\noptions:\n -a\n -b\n\n").parse(
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
test "upstream 40" {
  assert_eq(
    Parser::new("usage: prog (-a -b)\n\noptions: -a\n         -b\n\n")
    .parse(["-a", "-b"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 41" {
  assert_eq(
    Parser::new("usage: prog (-a -b)\n\noptions: -a\n         -b\n\n")
    .parse(["-b", "-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 42" {
  assert_true(
    (Ok(
      Parser::new("usage: prog (-a -b)\n\noptions: -a\n         -b\n\n").parse(
        ["-a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 43" {
  assert_true(
    (Ok(
      Parser::new("usage: prog (-a -b)\n\noptions: -a\n         -b\n\n").parse(
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
test "upstream 44" {
  assert_eq(
    Parser::new("usage: prog [-a] -b\n\noptions: -a\n -b\n\n")
    .parse(["-a", "-b"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 45" {
  assert_eq(
    Parser::new("usage: prog [-a] -b\n\noptions: -a\n -b\n\n")
    .parse(["-b", "-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 46" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [-a] -b\n\noptions: -a\n -b\n\n").parse(
        ["-a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 47" {
  assert_eq(
    Parser::new("usage: prog [-a] -b\n\noptions: -a\n -b\n\n")
    .parse(["-b"], options_first=false)
    .to_json(),
    ({ "-a": false, "-b": true } : Json),
  )
}

///|
test "upstream 48" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [-a] -b\n\noptions: -a\n -b\n\n").parse(
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
test "upstream 49" {
  assert_eq(
    Parser::new("usage: prog [(-a -b)]\n\noptions: -a\n         -b\n\n")
    .parse(["-a", "-b"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 50" {
  assert_eq(
    Parser::new("usage: prog [(-a -b)]\n\noptions: -a\n         -b\n\n")
    .parse(["-b", "-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": true } : Json),
  )
}

///|
test "upstream 51" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [(-a -b)]\n\noptions: -a\n         -b\n\n").parse(
        ["-a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 52" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [(-a -b)]\n\noptions: -a\n         -b\n\n").parse(
        ["-b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 53" {
  assert_eq(
    Parser::new("usage: prog [(-a -b)]\n\noptions: -a\n         -b\n\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "-a": false, "-b": false } : Json),
  )
}

///|
test "upstream 54" {
  assert_true(
    (Ok(
      Parser::new("usage: prog (-a|-b)\n\noptions: -a\n         -b\n\n").parse(
        ["-a", "-b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 55" {
  assert_true(
    (Ok(
      Parser::new("usage: prog (-a|-b)\n\noptions: -a\n         -b\n\n").parse(
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
test "upstream 56" {
  assert_eq(
    Parser::new("usage: prog (-a|-b)\n\noptions: -a\n         -b\n\n")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": false } : Json),
  )
}

///|
test "upstream 57" {
  assert_eq(
    Parser::new("usage: prog (-a|-b)\n\noptions: -a\n         -b\n\n")
    .parse(["-b"], options_first=false)
    .to_json(),
    ({ "-a": false, "-b": true } : Json),
  )
}

///|
test "upstream 58" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [ -a | -b ]\n\noptions: -a\n         -b\n\n").parse(
        ["-a", "-b"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 59" {
  assert_eq(
    Parser::new("usage: prog [ -a | -b ]\n\noptions: -a\n         -b\n\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "-a": false, "-b": false } : Json),
  )
}

///|
test "upstream 60" {
  assert_eq(
    Parser::new("usage: prog [ -a | -b ]\n\noptions: -a\n         -b\n\n")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": false } : Json),
  )
}

///|
test "upstream 61" {
  assert_eq(
    Parser::new("usage: prog [ -a | -b ]\n\noptions: -a\n         -b\n\n")
    .parse(["-b"], options_first=false)
    .to_json(),
    ({ "-a": false, "-b": true } : Json),
  )
}

///|
test "upstream 62" {
  assert_eq(
    Parser::new("usage: prog <arg>")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "<arg>": "10" } : Json),
  )
}

///|
test "upstream 63" {
  assert_true(
    (Ok(
      Parser::new("usage: prog <arg>").parse(["10", "20"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 64" {
  assert_true(
    (Ok(Parser::new("usage: prog <arg>").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 65" {
  assert_eq(
    Parser::new("usage: prog [<arg>]")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "<arg>": "10" } : Json),
  )
}

///|
test "upstream 66" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [<arg>]").parse(
        ["10", "20"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 67" {
  assert_eq(
    Parser::new("usage: prog [<arg>]").parse([], options_first=false).to_json(),
    ({ "<arg>": null } : Json),
  )
}

///|
test "upstream 68" {
  assert_eq(
    Parser::new("usage: prog <kind> <name> <type>")
    .parse(["10", "20", "40"], options_first=false)
    .to_json(),
    ({ "<kind>": "10", "<name>": "20", "<type>": "40" } : Json),
  )
}

///|
test "upstream 69" {
  assert_true(
    (Ok(
      Parser::new("usage: prog <kind> <name> <type>").parse(
        ["10", "20"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 70" {
  assert_true(
    (Ok(
      Parser::new("usage: prog <kind> <name> <type>").parse(
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
test "upstream 71" {
  assert_eq(
    Parser::new("usage: prog <kind> [<name> <type>]")
    .parse(["10", "20", "40"], options_first=false)
    .to_json(),
    ({ "<kind>": "10", "<name>": "20", "<type>": "40" } : Json),
  )
}

///|
test "upstream 72" {
  assert_eq(
    Parser::new("usage: prog <kind> [<name> <type>]")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "<kind>": "10", "<name>": "20", "<type>": null } : Json),
  )
}

///|
test "upstream 73" {
  assert_true(
    (Ok(
      Parser::new("usage: prog <kind> [<name> <type>]").parse(
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
test "upstream 74" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [<kind> | <name> <type>]").parse(
        ["10", "20", "40"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 75" {
  assert_eq(
    Parser::new("usage: prog [<kind> | <name> <type>]")
    .parse(["20", "40"], options_first=false)
    .to_json(),
    ({ "<kind>": null, "<name>": "20", "<type>": "40" } : Json),
  )
}

///|
test "upstream 76" {
  assert_eq(
    Parser::new("usage: prog [<kind> | <name> <type>]")
    .parse([], options_first=false)
    .to_json(),
    ({ "<kind>": null, "<name>": null, "<type>": null } : Json),
  )
}

///|
test "upstream 77" {
  assert_eq(
    Parser::new("usage: prog (<kind> --all | <name>)\n\noptions:\n --all\n\n")
    .parse(["10", "--all"], options_first=false)
    .to_json(),
    ({ "<kind>": "10", "--all": true, "<name>": null } : Json),
  )
}

///|
test "upstream 78" {
  assert_eq(
    Parser::new("usage: prog (<kind> --all | <name>)\n\noptions:\n --all\n\n")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "<kind>": null, "--all": false, "<name>": "10" } : Json),
  )
}

///|
test "upstream 79" {
  assert_true(
    (Ok(
      Parser::new("usage: prog (<kind> --all | <name>)\n\noptions:\n --all\n\n").parse(
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
test "upstream 80" {
  assert_eq(
    Parser::new("usage: prog [<name> <name>]")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "<name>": ["10", "20"] } : Json),
  )
}

///|
test "upstream 81" {
  assert_eq(
    Parser::new("usage: prog [<name> <name>]")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "<name>": ["10"] } : Json),
  )
}

///|
test "upstream 82" {
  assert_eq(
    Parser::new("usage: prog [<name> <name>]")
    .parse([], options_first=false)
    .to_json(),
    ({ "<name>": [] } : Json),
  )
}

///|
test "upstream 83" {
  assert_eq(
    Parser::new("usage: prog [(<name> <name>)]")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "<name>": ["10", "20"] } : Json),
  )
}

///|
test "upstream 84" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [(<name> <name>)]").parse(
        ["10"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 85" {
  assert_eq(
    Parser::new("usage: prog [(<name> <name>)]")
    .parse([], options_first=false)
    .to_json(),
    ({ "<name>": [] } : Json),
  )
}

///|
test "upstream 86" {
  assert_eq(
    Parser::new("usage: prog NAME...")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "NAME": ["10", "20"] } : Json),
  )
}

///|
test "upstream 87" {
  assert_eq(
    Parser::new("usage: prog NAME...")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "NAME": ["10"] } : Json),
  )
}

///|
test "upstream 88" {
  assert_true(
    (Ok(Parser::new("usage: prog NAME...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 89" {
  assert_eq(
    Parser::new("usage: prog [NAME]...")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "NAME": ["10", "20"] } : Json),
  )
}

///|
test "upstream 90" {
  assert_eq(
    Parser::new("usage: prog [NAME]...")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "NAME": ["10"] } : Json),
  )
}

///|
test "upstream 91" {
  assert_eq(
    Parser::new("usage: prog [NAME]...")
    .parse([], options_first=false)
    .to_json(),
    ({ "NAME": [] } : Json),
  )
}

///|
test "upstream 92" {
  assert_eq(
    Parser::new("usage: prog [NAME...]")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "NAME": ["10", "20"] } : Json),
  )
}

///|
test "upstream 93" {
  assert_eq(
    Parser::new("usage: prog [NAME...]")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "NAME": ["10"] } : Json),
  )
}

///|
test "upstream 94" {
  assert_eq(
    Parser::new("usage: prog [NAME...]")
    .parse([], options_first=false)
    .to_json(),
    ({ "NAME": [] } : Json),
  )
}

///|
test "upstream 95" {
  assert_eq(
    Parser::new("usage: prog [NAME [NAME ...]]")
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "NAME": ["10", "20"] } : Json),
  )
}

///|
test "upstream 96" {
  assert_eq(
    Parser::new("usage: prog [NAME [NAME ...]]")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "NAME": ["10"] } : Json),
  )
}

///|
test "upstream 97" {
  assert_eq(
    Parser::new("usage: prog [NAME [NAME ...]]")
    .parse([], options_first=false)
    .to_json(),
    ({ "NAME": [] } : Json),
  )
}

///|
test "upstream 98" {
  assert_eq(
    Parser::new("usage: prog (NAME | --foo NAME)\n\noptions: --foo\n\n")
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "NAME": "10", "--foo": false } : Json),
  )
}

///|
test "upstream 99" {
  assert_eq(
    Parser::new("usage: prog (NAME | --foo NAME)\n\noptions: --foo\n\n")
    .parse(["--foo", "10"], options_first=false)
    .to_json(),
    ({ "NAME": "10", "--foo": true } : Json),
  )
}

///|
test "upstream 100" {
  assert_true(
    (Ok(
      Parser::new("usage: prog (NAME | --foo NAME)\n\noptions: --foo\n\n").parse(
        ["--foo=10"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 101" {
  assert_eq(
    Parser::new(
      "usage: prog (NAME | --foo) [--bar | NAME]\n\noptions: --foo\noptions: --bar\n\n",
    )
    .parse(["10"], options_first=false)
    .to_json(),
    ({ "NAME": ["10"], "--foo": false, "--bar": false } : Json),
  )
}

///|
test "upstream 102" {
  assert_eq(
    Parser::new(
      "usage: prog (NAME | --foo) [--bar | NAME]\n\noptions: --foo\noptions: --bar\n\n",
    )
    .parse(["10", "20"], options_first=false)
    .to_json(),
    ({ "NAME": ["10", "20"], "--foo": false, "--bar": false } : Json),
  )
}

///|
test "upstream 103" {
  assert_eq(
    Parser::new(
      "usage: prog (NAME | --foo) [--bar | NAME]\n\noptions: --foo\noptions: --bar\n\n",
    )
    .parse(["--foo", "--bar"], options_first=false)
    .to_json(),
    ({ "NAME": [], "--foo": true, "--bar": true } : Json),
  )
}

///|
test "upstream 104" {
  assert_eq(
    Parser::new(
      "Naval Fate.\n\nUsage:\n  prog ship new <name>...\n  prog ship [<name>] move <x> <y> [--speed=<kn>]\n  prog ship shoot <x> <y>\n  prog mine (set|remove) <x> <y> [--moored|--drifting]\n  prog -h | --help\n  prog --version\n\nOptions:\n  -h --help     Show this screen.\n  --version     Show version.\n  --speed=<kn>  Speed in knots [default: 10].\n  --moored      Mored (anchored) mine.\n  --drifting    Drifting mine.\n\n",
    )
    .parse(
      ["ship", "Guardian", "move", "150", "300", "--speed=20"],
      options_first=false,
    )
    .to_json(),
    (
      {
        "--drifting": false,
        "--help": false,
        "--moored": false,
        "--speed": "20",
        "--version": false,
        "<name>": ["Guardian"],
        "<x>": "150",
        "<y>": "300",
        "mine": false,
        "move": true,
        "new": false,
        "remove": false,
        "set": false,
        "ship": true,
        "shoot": false,
      } : Json),
  )
}

///|
test "upstream 105" {
  assert_eq(
    Parser::new("usage: prog --hello")
    .parse(["--hello"], options_first=false)
    .to_json(),
    ({ "--hello": true } : Json),
  )
}

///|
test "upstream 106" {
  assert_eq(
    Parser::new("usage: prog [--hello=<world>]")
    .parse([], options_first=false)
    .to_json(),
    ({ "--hello": null } : Json),
  )
}

///|
test "upstream 107" {
  assert_eq(
    Parser::new("usage: prog [--hello=<world>]")
    .parse(["--hello", "wrld"], options_first=false)
    .to_json(),
    ({ "--hello": "wrld" } : Json),
  )
}

///|
test "upstream 108" {
  assert_eq(
    Parser::new("usage: prog [-o]").parse([], options_first=false).to_json(),
    ({ "-o": false } : Json),
  )
}

///|
test "upstream 109" {
  assert_eq(
    Parser::new("usage: prog [-o]").parse(["-o"], options_first=false).to_json(),
    ({ "-o": true } : Json),
  )
}

///|
test "upstream 110" {
  assert_eq(
    Parser::new("usage: prog [-opr]")
    .parse(["-op"], options_first=false)
    .to_json(),
    ({ "-o": true, "-p": true, "-r": false } : Json),
  )
}

///|
test "upstream 111" {
  assert_eq(
    Parser::new("usage: prog --aabb | --aa")
    .parse(["--aa"], options_first=false)
    .to_json(),
    ({ "--aabb": false, "--aa": true } : Json),
  )
}

///|
test "upstream 112" {
  assert_true(
    (Ok(
      Parser::new("usage: prog --aabb | --aa").parse(
        ["--a"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 113" {
  assert_eq(
    Parser::new("Usage: prog -v").parse(["-v"], options_first=false).to_json(),
    ({ "-v": true } : Json),
  )
}

///|
test "upstream 114" {
  assert_eq(
    Parser::new("Usage: prog [-v -v]").parse([], options_first=false).to_json(),
    ({ "-v": 0 } : Json),
  )
}

///|
test "upstream 115" {
  assert_eq(
    Parser::new("Usage: prog [-v -v]")
    .parse(["-v"], options_first=false)
    .to_json(),
    ({ "-v": 1 } : Json),
  )
}

///|
test "upstream 116" {
  assert_eq(
    Parser::new("Usage: prog [-v -v]")
    .parse(["-vv"], options_first=false)
    .to_json(),
    ({ "-v": 2 } : Json),
  )
}

///|
test "upstream 117" {
  assert_true(
    (Ok(Parser::new("Usage: prog -v ...").parse([], options_first=false)) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 118" {
  assert_eq(
    Parser::new("Usage: prog -v ...")
    .parse(["-v"], options_first=false)
    .to_json(),
    ({ "-v": 1 } : Json),
  )
}

///|
test "upstream 119" {
  assert_eq(
    Parser::new("Usage: prog -v ...")
    .parse(["-vv"], options_first=false)
    .to_json(),
    ({ "-v": 2 } : Json),
  )
}

///|
test "upstream 120" {
  assert_eq(
    Parser::new("Usage: prog -v ...")
    .parse(["-vvvvvv"], options_first=false)
    .to_json(),
    ({ "-v": 6 } : Json),
  )
}

///|
test "upstream 121" {
  assert_eq(
    Parser::new(
      "Usage: prog [-v | -vv | -vvv]\n\nThis one is probably most readable user-friednly variant.\n\n",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "-v": 0 } : Json),
  )
}

///|
test "upstream 122" {
  assert_eq(
    Parser::new(
      "Usage: prog [-v | -vv | -vvv]\n\nThis one is probably most readable user-friednly variant.\n\n",
    )
    .parse(["-v"], options_first=false)
    .to_json(),
    ({ "-v": 1 } : Json),
  )
}

///|
test "upstream 123" {
  assert_eq(
    Parser::new(
      "Usage: prog [-v | -vv | -vvv]\n\nThis one is probably most readable user-friednly variant.\n\n",
    )
    .parse(["-vv"], options_first=false)
    .to_json(),
    ({ "-v": 2 } : Json),
  )
}

///|
test "upstream 124" {
  assert_true(
    (Ok(
      Parser::new(
        "Usage: prog [-v | -vv | -vvv]\n\nThis one is probably most readable user-friednly variant.\n\n",
      ).parse(["-vvvv"], options_first=false),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 125" {
  assert_eq(
    Parser::new("usage: prog [--ver --ver]")
    .parse(["--ver", "--ver"], options_first=false)
    .to_json(),
    ({ "--ver": 2 } : Json),
  )
}

///|
test "upstream 126" {
  assert_eq(
    Parser::new("usage: prog [go]").parse(["go"], options_first=false).to_json(),
    ({ "go": true } : Json),
  )
}

///|
test "upstream 127" {
  assert_eq(
    Parser::new("usage: prog [go go]").parse([], options_first=false).to_json(),
    ({ "go": 0 } : Json),
  )
}

///|
test "upstream 128" {
  assert_eq(
    Parser::new("usage: prog [go go]")
    .parse(["go"], options_first=false)
    .to_json(),
    ({ "go": 1 } : Json),
  )
}

///|
test "upstream 129" {
  assert_eq(
    Parser::new("usage: prog [go go]")
    .parse(["go", "go"], options_first=false)
    .to_json(),
    ({ "go": 2 } : Json),
  )
}

///|
test "upstream 130" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [go go]").parse(
        ["go", "go", "go"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 131" {
  assert_eq(
    Parser::new("usage: prog go...")
    .parse(["go", "go", "go", "go", "go"], options_first=false)
    .to_json(),
    ({ "go": 5 } : Json),
  )
}

///|
test "upstream 132" {
  assert_eq(
    Parser::new("usage: prog [options] [-a]\n\noptions: -a\n         -b\n")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": true, "-b": false } : Json),
  )
}

///|
test "upstream 133" {
  assert_true(
    (Ok(
      Parser::new("usage: prog [options] [-a]\n\noptions: -a\n         -b\n").parse(
        ["-aa"],
        options_first=false,
      ),
    ) catch {
      e => Err(e)
    })
    is Err(Arguments(_)),
  )
}

///|
test "upstream 134" {
  assert_eq(
    Parser::new(
      "Usage: prog [options] A\nOptions:\n    -q  Be quiet\n    -v  Be verbose.\n\n",
    )
    .parse(["arg"], options_first=false)
    .to_json(),
    ({ "A": "arg", "-v": false, "-q": false } : Json),
  )
}

///|
test "upstream 135" {
  assert_eq(
    Parser::new(
      "Usage: prog [options] A\nOptions:\n    -q  Be quiet\n    -v  Be verbose.\n\n",
    )
    .parse(["-v", "arg"], options_first=false)
    .to_json(),
    ({ "A": "arg", "-v": true, "-q": false } : Json),
  )
}

///|
test "upstream 136" {
  assert_eq(
    Parser::new(
      "Usage: prog [options] A\nOptions:\n    -q  Be quiet\n    -v  Be verbose.\n\n",
    )
    .parse(["-q", "arg"], options_first=false)
    .to_json(),
    ({ "A": "arg", "-v": false, "-q": true } : Json),
  )
}

///|
test "upstream 137" {
  assert_eq(
    Parser::new("usage: prog [-]").parse(["-"], options_first=false).to_json(),
    ({ "-": true } : Json),
  )
}

///|
test "upstream 138" {
  assert_eq(
    Parser::new("usage: prog [-]").parse([], options_first=false).to_json(),
    ({ "-": false } : Json),
  )
}

///|
test "upstream 139" {
  assert_eq(
    Parser::new("usage: prog [NAME [NAME ...]]")
    .parse(["a", "b"], options_first=false)
    .to_json(),
    ({ "NAME": ["a", "b"] } : Json),
  )
}

///|
test "upstream 140" {
  assert_eq(
    Parser::new("usage: prog [NAME [NAME ...]]")
    .parse([], options_first=false)
    .to_json(),
    ({ "NAME": [] } : Json),
  )
}

///|
test "upstream 141" {
  assert_eq(
    Parser::new(
      "usage: prog [options]\noptions:\n -a        Add\n -m <msg>  Message\n\n",
    )
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-m": null, "-a": true } : Json),
  )
}

///|
test "upstream 142" {
  assert_eq(
    Parser::new("usage: prog --hello")
    .parse(["--hello"], options_first=false)
    .to_json(),
    ({ "--hello": true } : Json),
  )
}

///|
test "upstream 143" {
  assert_eq(
    Parser::new("usage: prog [--hello=<world>]")
    .parse([], options_first=false)
    .to_json(),
    ({ "--hello": null } : Json),
  )
}

///|
test "upstream 144" {
  assert_eq(
    Parser::new("usage: prog [--hello=<world>]")
    .parse(["--hello", "wrld"], options_first=false)
    .to_json(),
    ({ "--hello": "wrld" } : Json),
  )
}

///|
test "upstream 145" {
  assert_eq(
    Parser::new("usage: prog [-o]").parse([], options_first=false).to_json(),
    ({ "-o": false } : Json),
  )
}

///|
test "upstream 146" {
  assert_eq(
    Parser::new("usage: prog [-o]").parse(["-o"], options_first=false).to_json(),
    ({ "-o": true } : Json),
  )
}

///|
test "upstream 147" {
  assert_eq(
    Parser::new("usage: prog [-opr]")
    .parse(["-op"], options_first=false)
    .to_json(),
    ({ "-o": true, "-p": true, "-r": false } : Json),
  )
}

///|
test "upstream 148" {
  assert_eq(
    Parser::new("usage: git [-v | --verbose]")
    .parse(["-v"], options_first=false)
    .to_json(),
    ({ "-v": true, "--verbose": false } : Json),
  )
}

///|
test "upstream 149" {
  assert_eq(
    Parser::new("usage: git remote [-v | --verbose]")
    .parse(["remote", "-v"], options_first=false)
    .to_json(),
    ({ "remote": true, "-v": true, "--verbose": false } : Json),
  )
}

///|
test "upstream 150" {
  assert_eq(
    Parser::new("usage: prog").parse([], options_first=false).to_json(),
    ({} : Json),
  )
}

///|
test "upstream 151" {
  assert_eq(
    Parser::new("usage: prog\n           prog <a> <b>\n")
    .parse(["1", "2"], options_first=false)
    .to_json(),
    ({ "<a>": "1", "<b>": "2" } : Json),
  )
}

///|
test "upstream 152" {
  assert_eq(
    Parser::new("usage: prog\n           prog <a> <b>\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "<a>": null, "<b>": null } : Json),
  )
}

///|
test "upstream 153" {
  assert_eq(
    Parser::new("usage: prog <a> <b>\n           prog\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "<a>": null, "<b>": null } : Json),
  )
}

///|
test "upstream 154" {
  assert_eq(
    Parser::new("usage: prog [--file=<f>]")
    .parse([], options_first=false)
    .to_json(),
    ({ "--file": null } : Json),
  )
}

///|
test "upstream 155" {
  assert_eq(
    Parser::new("usage: prog [--file=<f>]\n\noptions: --file <a>\n\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "--file": null } : Json),
  )
}

///|
test "upstream 156" {
  assert_eq(
    Parser::new(
      "Usage: prog [-a <host:port>]\n\nOptions: -a, --address <host:port>  TCP address [default: localhost:6283].\n\n",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "--address": "localhost:6283" } : Json),
  )
}

///|
test "upstream 157" {
  assert_eq(
    Parser::new("usage: prog --long=<arg> ...")
    .parse(["--long", "one"], options_first=false)
    .to_json(),
    ({ "--long": ["one"] } : Json),
  )
}

///|
test "upstream 158" {
  assert_eq(
    Parser::new("usage: prog --long=<arg> ...")
    .parse(["--long", "one", "--long", "two"], options_first=false)
    .to_json(),
    ({ "--long": ["one", "two"] } : Json),
  )
}

///|
test "upstream 159" {
  assert_eq(
    Parser::new("usage: prog (go <direction> --speed=<km/h>)...")
    .parse(
      ["go", "left", "--speed=5", "go", "right", "--speed=9"],
      options_first=false,
    )
    .to_json(),
    ({ "go": 2, "<direction>": ["left", "right"], "--speed": ["5", "9"] } : Json),
  )
}

///|
test "upstream 160" {
  assert_eq(
    Parser::new("usage: prog [options] -a\n\noptions: -a\n\n")
    .parse(["-a"], options_first=false)
    .to_json(),
    ({ "-a": true } : Json),
  )
}

///|
test "upstream 161" {
  assert_eq(
    Parser::new("usage: prog [-o <o>]...\n\noptions: -o <o>  [default: x]\n\n")
    .parse(["-o", "this", "-o", "that"], options_first=false)
    .to_json(),
    ({ "-o": ["this", "that"] } : Json),
  )
}

///|
test "upstream 162" {
  assert_eq(
    Parser::new("usage: prog [-o <o>]...\n\noptions: -o <o>  [default: x]\n\n")
    .parse([], options_first=false)
    .to_json(),
    ({ "-o": ["x"] } : Json),
  )
}

///|
test "upstream 163" {
  assert_eq(
    Parser::new(
      "usage: prog [-o <o>]...\n\noptions: -o <o>  [default: x y]\n\n",
    )
    .parse(["-o", "this"], options_first=false)
    .to_json(),
    ({ "-o": ["this"] } : Json),
  )
}

///|
test "upstream 164" {
  assert_eq(
    Parser::new(
      "usage: prog [-o <o>]...\n\noptions: -o <o>  [default: x y]\n\n",
    )
    .parse([], options_first=false)
    .to_json(),
    ({ "-o": ["x", "y"] } : Json),
  )
}

///|
test "upstream 165" {
  assert_eq(
    Parser::new("usage: prog -pPATH\n\noptions: -p PATH\n\n")
    .parse(["-pHOME"], options_first=false)
    .to_json(),
    ({ "-p": "HOME" } : Json),
  )
}

///|
test "upstream 166" {
  assert_eq(
    Parser::new("Usage: foo (--xx=x|--yy=y)...")
    .parse(["--xx=1", "--yy=2"], options_first=false)
    .to_json(),
    ({ "--xx": ["1"], "--yy": ["2"] } : Json),
  )
}

///|
test "upstream 167" {
  assert_eq(
    Parser::new("usage: prog [<input file>]")
    .parse(["f.txt"], options_first=false)
    .to_json(),
    ({ "<input file>": "f.txt" } : Json),
  )
}

///|
test "upstream 168" {
  assert_eq(
    Parser::new("usage: prog [--input=<file name>]...")
    .parse(["--input", "a.txt", "--input=b.txt"], options_first=false)
    .to_json(),
    ({ "--input": ["a.txt", "b.txt"] } : Json),
  )
}

///|
test "upstream 169" {
  assert_eq(
    Parser::new(
      "usage: prog good [options]\n           prog fail [options]\n\noptions: --loglevel=N\n\n",
    )
    .parse(["fail", "--loglevel", "5"], options_first=false)
    .to_json(),
    ({ "--loglevel": "5", "fail": true, "good": false } : Json),
  )
}

///|
test "upstream 170" {
  assert_eq(
    Parser::new("usage:prog --foo")
    .parse(["--foo"], options_first=false)
    .to_json(),
    ({ "--foo": true } : Json),
  )
}

///|
test "upstream 171" {
  assert_eq(
    Parser::new("PROGRAM USAGE: prog --foo")
    .parse(["--foo"], options_first=false)
    .to_json(),
    ({ "--foo": true } : Json),
  )
}

///|
test "upstream 172" {
  assert_eq(
    Parser::new("Usage: prog --foo\n           prog --bar\nNOT PART OF SECTION")
    .parse(["--foo"], options_first=false)
    .to_json(),
    ({ "--foo": true, "--bar": false } : Json),
  )
}

///|
test "upstream 173" {
  assert_eq(
    Parser::new("Usage:\n prog --foo\n prog --bar\n\nNOT PART OF SECTION")
    .parse(["--foo"], options_first=false)
    .to_json(),
    ({ "--foo": true, "--bar": false } : Json),
  )
}

///|
test "upstream 174" {
  assert_eq(
    Parser::new("Usage:\n prog --foo\n prog --bar\nNOT PART OF SECTION")
    .parse(["--foo"], options_first=false)
    .to_json(),
    ({ "--foo": true, "--bar": false } : Json),
  )
}

///|
test "upstream 175" {
  assert_eq(
    Parser::new(
      "Usage: prog [options]\n\nglobal options: --foo\nlocal options: --baz\n               --bar\nother options:\n --egg\n --spam\n-not-an-option-\n\n",
    )
    .parse(["--baz", "--egg"], options_first=false)
    .to_json(),
    (
      {
        "--foo": false,
        "--baz": true,
        "--bar": false,
        "--egg": true,
        "--spam": false,
      } : Json),
  )
}
