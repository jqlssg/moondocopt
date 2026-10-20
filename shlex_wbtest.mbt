// Python shlex POSIX quote/join oracle; no evaluation or shell execution.

///|
test "shlex quote oracle 1" {
  assert_eq(
    join_command(["`中; #中", "\\中🙂`\"🙂🙂", "\\`'", "", ""]),
    "'`中; #中' '\\中🙂`\"🙂🙂' '\\`'\"'\"'' '' ''",
  )
  assert_eq(
    split_command("'`中; #中' '\\中🙂`\"🙂🙂' '\\`'\"'\"'' '' ''"),
    ["`中; #中", "\\中🙂`\"🙂🙂", "\\`'", "", ""],
  )
}

///|
test "shlex quote oracle 2" {
  assert_eq(
    join_command([" ;`\\中$\\$;", "\"\na$中#中", "\"\n🙂🙂 ' 🙂"]),
    "' ;`\\中$\\$;' '\"\na$中#中' '\"\n🙂🙂 '\"'\"' 🙂'",
  )
  assert_eq(
    split_command("' ;`\\中$\\$;' '\"\na$中#中' '\"\n🙂🙂 '\"'\"' 🙂'"),
    [" ;`\\中$\\$;", "\"\na$中#中", "\"\n🙂🙂 ' 🙂"],
  )
}

///|
test "shlex quote oracle 3" {
  assert_eq(
    join_command([
      "##中中中$中a", "", "🙂'", "'🙂';a🙂$", "#$", "\n\"$ \"\n\n# ",
    ]),
    "'##中中中$中a' '' '🙂'\"'\"'' ''\"'\"'🙂'\"'\"';a🙂$' '#$' '\n\"$ \"\n\n# '",
  )
  assert_eq(
    split_command(
      "'##中中中$中a' '' '🙂'\"'\"'' ''\"'\"'🙂'\"'\"';a🙂$' '#$' '\n\"$ \"\n\n# '",
    ),
    ["##中中中$中a", "", "🙂'", "'🙂';a🙂$", "#$", "\n\"$ \"\n\n# "],
  )
}

///|
test "shlex quote oracle 4" {
  assert_eq(
    join_command(["`;'#中;", "' \n'``", " 中中🙂a'a#\\", ";", "\n';a\n"]),
    "'`;'\"'\"'#中;' ''\"'\"' \n'\"'\"'``' ' 中中🙂a'\"'\"'a#\\' ';' '\n'\"'\"';a\n'",
  )
  assert_eq(
    split_command(
      "'`;'\"'\"'#中;' ''\"'\"' \n'\"'\"'``' ' 中中🙂a'\"'\"'a#\\' ';' '\n'\"'\"';a\n'",
    ),
    ["`;'#中;", "' \n'``", " 中中🙂a'a#\\", ";", "\n';a\n"],
  )
}

///|
test "shlex quote oracle 5" {
  assert_eq(join_command(["", "a "]), "'' 'a '")
  assert_eq(split_command("'' 'a '"), ["", "a "])
}

///|
test "shlex quote oracle 6" {
  assert_eq(
    join_command([";\\ ", "'\\'#aa$", "$", "🙂$a\n#\\$;"]),
    "';\\ ' ''\"'\"'\\'\"'\"'#aa$' '$' '🙂$a\n#\\$;'",
  )
  assert_eq(
    split_command("';\\ ' ''\"'\"'\\'\"'\"'#aa$' '$' '🙂$a\n#\\$;'"),
    [";\\ ", "'\\'#aa$", "$", "🙂$a\n#\\$;"],
  )
}

///|
test "shlex quote oracle 7" {
  assert_eq(join_command([";;'\n\n", "#"]), "';;'\"'\"'\n\n' '#'")
  assert_eq(split_command("';;'\"'\"'\n\n' '#'"), [";;'\n\n", "#"])
}

///|
test "shlex quote oracle 8" {
  assert_eq(join_command([";;", " #\n \\$ "]), "';;' ' #\n \\$ '")
  assert_eq(split_command("';;' ' #\n \\$ '"), [";;", " #\n \\$ "])
}

///|
test "shlex quote oracle 9" {
  assert_eq(
    join_command([
      "'$", "", "a# a\\🙂\"中 ", " 🙂🙂#", "$\n\"\\#", "a ;`\"\\\\'", "$🙂",
    ]),
    "''\"'\"'$' '' 'a# a\\🙂\"中 ' ' 🙂🙂#' '$\n\"\\#' 'a ;`\"\\\\'\"'\"'' '$🙂'",
  )
  assert_eq(
    split_command(
      "''\"'\"'$' '' 'a# a\\🙂\"中 ' ' 🙂🙂#' '$\n\"\\#' 'a ;`\"\\\\'\"'\"'' '$🙂'",
    ),
    [
      "'$", "", "a# a\\🙂\"中 ", " 🙂🙂#", "$\n\"\\#", "a ;`\"\\\\'", "$🙂",
    ],
  )
}

///|
test "shlex quote oracle 10" {
  assert_eq(
    join_command(["$#$ $\\;a", "\"", "🙂中中中中 ", " 🙂🙂\n🙂'"]),
    "'$#$ $\\;a' '\"' '🙂中中中中 ' ' 🙂🙂\n🙂'\"'\"''",
  )
  assert_eq(
    split_command(
      "'$#$ $\\;a' '\"' '🙂中中中中 ' ' 🙂🙂\n🙂'\"'\"''",
    ),
    ["$#$ $\\;a", "\"", "🙂中中中中 ", " 🙂🙂\n🙂'"],
  )
}

///|
test "shlex quote oracle 11" {
  assert_eq(
    join_command([" $\\#;;", "\"$;'🙂;\\\"a"]),
    "' $\\#;;' '\"$;'\"'\"'🙂;\\\"a'",
  )
  assert_eq(split_command("' $\\#;;' '\"$;'\"'\"'🙂;\\\"a'"), [
    " $\\#;;", "\"$;'🙂;\\\"a",
  ])
}

///|
test "shlex quote oracle 12" {
  assert_eq(
    join_command(["#;", " 中a\n", "$;# \\#\\;", "\\\""]),
    "'#;' ' 中a\n' '$;# \\#\\;' '\\\"'",
  )
  assert_eq(split_command("'#;' ' 中a\n' '$;# \\#\\;' '\\\"'"), [
    "#;", " 中a\n", "$;# \\#\\;", "\\\"",
  ])
}

///|
test "shlex quote oracle 13" {
  assert_eq(
    join_command([
      "a#$$", "$", "🙂中\n$ ", "🙂\"中'\" #$", "中 \";🙂 ", "a\n", "'\\a;'",
    ]),
    "'a#$$' '$' '🙂中\n$ ' '🙂\"中'\"'\"'\" #$' '中 \";🙂 ' 'a\n' ''\"'\"'\\a;'\"'\"''",
  )
  assert_eq(
    split_command(
      "'a#$$' '$' '🙂中\n$ ' '🙂\"中'\"'\"'\" #$' '中 \";🙂 ' 'a\n' ''\"'\"'\\a;'\"'\"''",
    ),
    [
      "a#$$", "$", "🙂中\n$ ", "🙂\"中'\" #$", "中 \";🙂 ", "a\n", "'\\a;'",
    ],
  )
}

///|
test "shlex quote oracle 14" {
  assert_eq(join_command(["'#"]), "''\"'\"'#'")
  assert_eq(split_command("''\"'\"'#'"), ["'#"])
}

///|
test "shlex quote oracle 15" {
  assert_eq(
    join_command(["", "aa", "a#", "\\🙂\n'\"中\\ ", ";$\n;\\\n$\\;"]),
    "'' aa 'a#' '\\🙂\n'\"'\"'\"中\\ ' ';$\n;\\\n$\\;'",
  )
  assert_eq(
    split_command("'' aa 'a#' '\\🙂\n'\"'\"'\"中\\ ' ';$\n;\\\n$\\;'"),
    ["", "aa", "a#", "\\🙂\n'\"中\\ ", ";$\n;\\\n$\\;"],
  )
}

///|
test "shlex quote oracle 16" {
  assert_eq(
    join_command(["#", "", "🙂\\\\", " \n\\"]),
    "'#' '' '🙂\\\\' ' \n\\'",
  )
  assert_eq(split_command("'#' '' '🙂\\\\' ' \n\\'"), [
    "#", "", "🙂\\\\", " \n\\",
  ])
}

///|
test "shlex quote oracle 17" {
  assert_eq(
    join_command(["", "\\$\n", "#;\\$` #\\`", ";\\;;a", "$;", "'🙂;🙂$"]),
    "'' '\\$\n' '#;\\$` #\\`' ';\\;;a' '$;' ''\"'\"'🙂;🙂$'",
  )
  assert_eq(
    split_command("'' '\\$\n' '#;\\$` #\\`' ';\\;;a' '$;' ''\"'\"'🙂;🙂$'"),
    ["", "\\$\n", "#;\\$` #\\`", ";\\;;a", "$;", "'🙂;🙂$"],
  )
}

///|
test "shlex quote oracle 18" {
  assert_eq(
    join_command([
      "\na", "';中'a", "a'", "中`", "$\na'' ", "🙂\n\n$中\"", "#\n\n$';$;",
    ]),
    "'\na' ''\"'\"';中'\"'\"'a' 'a'\"'\"'' '中`' '$\na'\"'\"''\"'\"' ' '🙂\n\n$中\"' '#\n\n$'\"'\"';$;'",
  )
  assert_eq(
    split_command(
      "'\na' ''\"'\"';中'\"'\"'a' 'a'\"'\"'' '中`' '$\na'\"'\"''\"'\"' ' '🙂\n\n$中\"' '#\n\n$'\"'\"';$;'",
    ),
    ["\na", "';中'a", "a'", "中`", "$\na'' ", "🙂\n\n$中\"", "#\n\n$';$;"],
  )
}

///|
test "shlex quote oracle 19" {
  assert_eq(
    join_command([
      "$;\\\\'", "中$`a`\";;", " '\\;;\\#", "a\"", "$\\", "中''中 $$;$", "中aa\"中  a;",
    ]),
    "'$;\\\\'\"'\"'' '中$`a`\";;' ' '\"'\"'\\;;\\#' 'a\"' '$\\' '中'\"'\"''\"'\"'中 $$;$' '中aa\"中  a;'",
  )
  assert_eq(
    split_command(
      "'$;\\\\'\"'\"'' '中$`a`\";;' ' '\"'\"'\\;;\\#' 'a\"' '$\\' '中'\"'\"''\"'\"'中 $$;$' '中aa\"中  a;'",
    ),
    [
      "$;\\\\'", "中$`a`\";;", " '\\;;\\#", "a\"", "$\\", "中''中 $$;$", "中aa\"中  a;",
    ],
  )
}

///|
test "shlex quote oracle 20" {
  assert_eq(
    join_command(["`;#\"\\a", "$#` ", "\\\"\n🙂", ""]),
    "'`;#\"\\a' '$#` ' '\\\"\n🙂' ''",
  )
  assert_eq(split_command("'`;#\"\\a' '$#` ' '\\\"\n🙂' ''"), [
    "`;#\"\\a", "$#` ", "\\\"\n🙂", "",
  ])
}

///|
test "shlex quote oracle 21" {
  assert_eq(join_command(["\n", ";", "\" \""]), "'\n' ';' '\" \"'")
  assert_eq(split_command("'\n' ';' '\" \"'"), ["\n", ";", "\" \""])
}

///|
test "shlex quote oracle 22" {
  assert_eq(
    join_command([
      "a#a", "\n$", "\n\\;🙂 \n#", "\"\n🙂\"'\\\";", "中 \n $ 🙂", " ` 中\"$中🙂\\",
    ]),
    "'a#a' '\n$' '\n\\;🙂 \n#' '\"\n🙂\"'\"'\"'\\\";' '中 \n $ 🙂' ' ` 中\"$中🙂\\'",
  )
  assert_eq(
    split_command(
      "'a#a' '\n$' '\n\\;🙂 \n#' '\"\n🙂\"'\"'\"'\\\";' '中 \n $ 🙂' ' ` 中\"$中🙂\\'",
    ),
    [
      "a#a", "\n$", "\n\\;🙂 \n#", "\"\n🙂\"'\\\";", "中 \n $ 🙂", " ` 中\"$中🙂\\",
    ],
  )
}

///|
test "shlex quote oracle 23" {
  assert_eq(
    join_command([
      "中中` $🙂", "#🙂'\n", "\\\n$🙂", "# a'$", "中", "\\\\🙂''",
    ]),
    "'中中` $🙂' '#🙂'\"'\"'\n' '\\\n$🙂' '# a'\"'\"'$' '中' '\\\\🙂'\"'\"''\"'\"''",
  )
  assert_eq(
    split_command(
      "'中中` $🙂' '#🙂'\"'\"'\n' '\\\n$🙂' '# a'\"'\"'$' '中' '\\\\🙂'\"'\"''\"'\"''",
    ),
    ["中中` $🙂", "#🙂'\n", "\\\n$🙂", "# a'$", "中", "\\\\🙂''"],
  )
}

///|
test "shlex quote oracle 24" {
  assert_eq(
    join_command([" ", "$'$$\\中", "a'\n#a🙂"]),
    "' ' '$'\"'\"'$$\\中' 'a'\"'\"'\n#a🙂'",
  )
  assert_eq(split_command("' ' '$'\"'\"'$$\\中' 'a'\"'\"'\n#a🙂'"), [
    " ", "$'$$\\中", "a'\n#a🙂",
  ])
}

///|
test "shlex quote oracle 25" {
  assert_eq(
    join_command([
      "\\$;`🙂", " a 🙂#$ #", "$🙂#", "\\\\", "", "a'\n'`\"#", "\";`$;;",
    ]),
    "'\\$;`🙂' ' a 🙂#$ #' '$🙂#' '\\\\' '' 'a'\"'\"'\n'\"'\"'`\"#' '\";`$;;'",
  )
  assert_eq(
    split_command(
      "'\\$;`🙂' ' a 🙂#$ #' '$🙂#' '\\\\' '' 'a'\"'\"'\n'\"'\"'`\"#' '\";`$;;'",
    ),
    ["\\$;`🙂", " a 🙂#$ #", "$🙂#", "\\\\", "", "a'\n'`\"#", "\";`$;;"],
  )
}

///|
test "shlex quote oracle 26" {
  assert_eq(
    join_command(["a'", "中$`🙂;'a🙂\\", "a`中", "中\\$", ""]),
    "'a'\"'\"'' '中$`🙂;'\"'\"'a🙂\\' 'a`中' '中\\$' ''",
  )
  assert_eq(
    split_command("'a'\"'\"'' '中$`🙂;'\"'\"'a🙂\\' 'a`中' '中\\$' ''"),
    ["a'", "中$`🙂;'a🙂\\", "a`中", "中\\$", ""],
  )
}

///|
test "shlex quote oracle 27" {
  assert_eq(join_command(["#\"\\中a`", ";;"]), "'#\"\\中a`' ';;'")
  assert_eq(split_command("'#\"\\中a`' ';;'"), ["#\"\\中a`", ";;"])
}

///|
test "shlex quote oracle 28" {
  assert_eq(join_command(["```中", "\n🙂\"", ""]), "'```中' '\n🙂\"' ''")
  assert_eq(split_command("'```中' '\n🙂\"' ''"), ["```中", "\n🙂\"", ""])
}

///|
test "shlex quote oracle 29" {
  assert_eq(
    join_command([
      "\"🙂\\\\a", ";'\\` ", "\n$\\$;a", ";🙂a\" ", "中`中🙂;\"🙂",
    ]),
    "'\"🙂\\\\a' ';'\"'\"'\\` ' '\n$\\$;a' ';🙂a\" ' '中`中🙂;\"🙂'",
  )
  assert_eq(
    split_command(
      "'\"🙂\\\\a' ';'\"'\"'\\` ' '\n$\\$;a' ';🙂a\" ' '中`中🙂;\"🙂'",
    ),
    ["\"🙂\\\\a", ";'\\` ", "\n$\\$;a", ";🙂a\" ", "中`中🙂;\"🙂"],
  )
}

///|
test "shlex quote oracle 30" {
  assert_eq(
    join_command([";;中;\n", "$\n中`\\", "\\a"]),
    "';;中;\n' '$\n中`\\' '\\a'",
  )
  assert_eq(split_command("';;中;\n' '$\n中`\\' '\\a'"), [
    ";;中;\n", "$\n中`\\", "\\a",
  ])
}

///|
test "shlex quote oracle 31" {
  assert_eq(
    join_command([
      "'#``a", "$ 中$;中\"\\", "\\ \n;\"🙂'", "🙂$🙂", "\"'a\n';;中", "\n\naa#",
      "'$;",
    ]),
    "''\"'\"'#``a' '$ 中$;中\"\\' '\\ \n;\"🙂'\"'\"'' '🙂$🙂' '\"'\"'\"'a\n'\"'\"';;中' '\n\naa#' ''\"'\"'$;'",
  )
  assert_eq(
    split_command(
      "''\"'\"'#``a' '$ 中$;中\"\\' '\\ \n;\"🙂'\"'\"'' '🙂$🙂' '\"'\"'\"'a\n'\"'\"';;中' '\n\naa#' ''\"'\"'$;'",
    ),
    [
      "'#``a", "$ 中$;中\"\\", "\\ \n;\"🙂'", "🙂$🙂", "\"'a\n';;中", "\n\naa#",
      "'$;",
    ],
  )
}

///|
test "shlex quote oracle 32" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 33" {
  assert_eq(
    join_command(["'a\n", ";$'", "`\\\"\\'a中\""]),
    "''\"'\"'a\n' ';$'\"'\"'' '`\\\"\\'\"'\"'a中\"'",
  )
  assert_eq(split_command("''\"'\"'a\n' ';$'\"'\"'' '`\\\"\\'\"'\"'a中\"'"), [
    "'a\n", ";$'", "`\\\"\\'a中\"",
  ])
}

///|
test "shlex quote oracle 34" {
  assert_eq(
    join_command([
      "\n$'", "`;#a🙂\n中", "$$##aa\\", "#\"中;", "$\\", "`a", "\"",
    ]),
    "'\n$'\"'\"'' '`;#a🙂\n中' '$$##aa\\' '#\"中;' '$\\' '`a' '\"'",
  )
  assert_eq(
    split_command(
      "'\n$'\"'\"'' '`;#a🙂\n中' '$$##aa\\' '#\"中;' '$\\' '`a' '\"'",
    ),
    ["\n$'", "`;#a🙂\n中", "$$##aa\\", "#\"中;", "$\\", "`a", "\""],
  )
}

///|
test "shlex quote oracle 35" {
  assert_eq(
    join_command([
      "中\na\\ \\", "\"a\\;\n", "' ;\n;\n\"#a", "🙂#$#\"#;#", ";;$'🙂\\中\n\\",
      "",
    ]),
    "'中\na\\ \\' '\"a\\;\n' ''\"'\"' ;\n;\n\"#a' '🙂#$#\"#;#' ';;$'\"'\"'🙂\\中\n\\' ''",
  )
  assert_eq(
    split_command(
      "'中\na\\ \\' '\"a\\;\n' ''\"'\"' ;\n;\n\"#a' '🙂#$#\"#;#' ';;$'\"'\"'🙂\\中\n\\' ''",
    ),
    [
      "中\na\\ \\", "\"a\\;\n", "' ;\n;\n\"#a", "🙂#$#\"#;#", ";;$'🙂\\中\n\\",
      "",
    ],
  )
}

///|
test "shlex quote oracle 36" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 37" {
  assert_eq(join_command(["🙂`\";$#;\""]), "'🙂`\";$#;\"'")
  assert_eq(split_command("'🙂`\";$#;\"'"), ["🙂`\";$#;\""])
}

///|
test "shlex quote oracle 38" {
  assert_eq(join_command(["\"\\\\#\"#🙂", "", ""]), "'\"\\\\#\"#🙂' '' ''")
  assert_eq(split_command("'\"\\\\#\"#🙂' '' ''"), ["\"\\\\#\"#🙂", "", ""])
}

///|
test "shlex quote oracle 39" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 40" {
  assert_eq(
    join_command([
      "\n 🙂'#", "a''$'#", "\"\\", "中 \"🙂'🙂", "'\n#中'`'",
    ]),
    "'\n 🙂'\"'\"'#' 'a'\"'\"''\"'\"'$'\"'\"'#' '\"\\' '中 \"🙂'\"'\"'🙂' ''\"'\"'\n#中'\"'\"'`'\"'\"''",
  )
  assert_eq(
    split_command(
      "'\n 🙂'\"'\"'#' 'a'\"'\"''\"'\"'$'\"'\"'#' '\"\\' '中 \"🙂'\"'\"'🙂' ''\"'\"'\n#中'\"'\"'`'\"'\"''",
    ),
    ["\n 🙂'#", "a''$'#", "\"\\", "中 \"🙂'🙂", "'\n#中'`'"],
  )
}

///|
test "shlex quote oracle 41" {
  assert_eq(
    join_command(["\n\\\"", "$", "#;", "\n#", "';`$a $", "#'🙂"]),
    "'\n\\\"' '$' '#;' '\n#' ''\"'\"';`$a $' '#'\"'\"'🙂'",
  )
  assert_eq(
    split_command("'\n\\\"' '$' '#;' '\n#' ''\"'\"';`$a $' '#'\"'\"'🙂'"),
    ["\n\\\"", "$", "#;", "\n#", "';`$a $", "#'🙂"],
  )
}

///|
test "shlex quote oracle 42" {
  assert_eq(
    join_command([
      "", "中`';a\n", "'\n", "🙂`;中'\n'`", "$'\n\"$#  \"", "#\\中\"", "\"'a",
    ]),
    "'' '中`'\"'\"';a\n' ''\"'\"'\n' '🙂`;中'\"'\"'\n'\"'\"'`' '$'\"'\"'\n\"$#  \"' '#\\中\"' '\"'\"'\"'a'",
  )
  assert_eq(
    split_command(
      "'' '中`'\"'\"';a\n' ''\"'\"'\n' '🙂`;中'\"'\"'\n'\"'\"'`' '$'\"'\"'\n\"$#  \"' '#\\中\"' '\"'\"'\"'a'",
    ),
    [
      "", "中`';a\n", "'\n", "🙂`;中'\n'`", "$'\n\"$#  \"", "#\\中\"", "\"'a",
    ],
  )
}

///|
test "shlex quote oracle 43" {
  assert_eq(
    join_command([
      "`\\\";;🙂;", "'中#\"\n$# `", "a\"", ";'$#", " a中`🙂a", "\\ a'", "\\a``a中🙂'",
    ]),
    "'`\\\";;🙂;' ''\"'\"'中#\"\n$# `' 'a\"' ';'\"'\"'$#' ' a中`🙂a' '\\ a'\"'\"'' '\\a``a中🙂'\"'\"''",
  )
  assert_eq(
    split_command(
      "'`\\\";;🙂;' ''\"'\"'中#\"\n$# `' 'a\"' ';'\"'\"'$#' ' a中`🙂a' '\\ a'\"'\"'' '\\a``a中🙂'\"'\"''",
    ),
    [
      "`\\\";;🙂;", "'中#\"\n$# `", "a\"", ";'$#", " a中`🙂a", "\\ a'", "\\a``a中🙂'",
    ],
  )
}

///|
test "shlex quote oracle 44" {
  assert_eq(
    join_command([
      "🙂中'` \\ $", "中`\n\"\"$\\a", "\n", "", "'🙂中`中a$",
    ]),
    "'🙂中'\"'\"'` \\ $' '中`\n\"\"$\\a' '\n' '' ''\"'\"'🙂中`中a$'",
  )
  assert_eq(
    split_command(
      "'🙂中'\"'\"'` \\ $' '中`\n\"\"$\\a' '\n' '' ''\"'\"'🙂中`中a$'",
    ),
    ["🙂中'` \\ $", "中`\n\"\"$\\a", "\n", "", "'🙂中`中a$"],
  )
}

///|
test "shlex quote oracle 45" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 46" {
  assert_eq(
    join_command([
      "🙂$' a\\'\\ ", "中🙂\\a", "a\n中'$", "🙂'\\\\ \n'", "", "中\"$",
    ]),
    "'🙂$'\"'\"' a\\'\"'\"'\\ ' '中🙂\\a' 'a\n中'\"'\"'$' '🙂'\"'\"'\\\\ \n'\"'\"'' '' '中\"$'",
  )
  assert_eq(
    split_command(
      "'🙂$'\"'\"' a\\'\"'\"'\\ ' '中🙂\\a' 'a\n中'\"'\"'$' '🙂'\"'\"'\\\\ \n'\"'\"'' '' '中\"$'",
    ),
    ["🙂$' a\\'\\ ", "中🙂\\a", "a\n中'$", "🙂'\\\\ \n'", "", "中\"$"],
  )
}

///|
test "shlex quote oracle 47" {
  assert_eq(join_command(["#  "]), "'#  '")
  assert_eq(split_command("'#  '"), ["#  "])
}

///|
test "shlex quote oracle 48" {
  assert_eq(join_command(["\n\n`a\\'"]), "'\n\n`a\\'\"'\"''")
  assert_eq(split_command("'\n\n`a\\'\"'\"''"), ["\n\n`a\\'"])
}

///|
test "shlex quote oracle 49" {
  assert_eq(
    join_command(["$ $ ;", " '$\\", "#\"中中$$a中", "\"\"`#' \n;", "`'"]),
    "'$ $ ;' ' '\"'\"'$\\' '#\"中中$$a中' '\"\"`#'\"'\"' \n;' '`'\"'\"''",
  )
  assert_eq(
    split_command(
      "'$ $ ;' ' '\"'\"'$\\' '#\"中中$$a中' '\"\"`#'\"'\"' \n;' '`'\"'\"''",
    ),
    ["$ $ ;", " '$\\", "#\"中中$$a中", "\"\"`#' \n;", "`'"],
  )
}

///|
test "shlex quote oracle 50" {
  assert_eq(
    join_command(["'$\n\\#$\n$", "", " ``🙂\"'🙂", "中🙂$$"]),
    "''\"'\"'$\n\\#$\n$' '' ' ``🙂\"'\"'\"'🙂' '中🙂$$'",
  )
  assert_eq(
    split_command("''\"'\"'$\n\\#$\n$' '' ' ``🙂\"'\"'\"'🙂' '中🙂$$'"),
    ["'$\n\\#$\n$", "", " ``🙂\"'🙂", "中🙂$$"],
  )
}

///|
test "shlex quote oracle 51" {
  assert_eq(
    join_command([
      "\"a中\"`''\"#", "中;\n ;\"#", "'\\ \" a中;", "a\n\n\\\\'$ ", "$#", "中 `#🙂 ",
    ]),
    "'\"a中\"`'\"'\"''\"'\"'\"#' '中;\n ;\"#' ''\"'\"'\\ \" a中;' 'a\n\n\\\\'\"'\"'$ ' '$#' '中 `#🙂 '",
  )
  assert_eq(
    split_command(
      "'\"a中\"`'\"'\"''\"'\"'\"#' '中;\n ;\"#' ''\"'\"'\\ \" a中;' 'a\n\n\\\\'\"'\"'$ ' '$#' '中 `#🙂 '",
    ),
    [
      "\"a中\"`''\"#", "中;\n ;\"#", "'\\ \" a中;", "a\n\n\\\\'$ ", "$#", "中 `#🙂 ",
    ],
  )
}

///|
test "shlex quote oracle 52" {
  assert_eq(
    join_command(["中'\"'\\", "", " 中🙂", "'\\;"]),
    "'中'\"'\"'\"'\"'\"'\\' '' ' 中🙂' ''\"'\"'\\;'",
  )
  assert_eq(
    split_command("'中'\"'\"'\"'\"'\"'\\' '' ' 中🙂' ''\"'\"'\\;'"),
    ["中'\"'\\", "", " 中🙂", "'\\;"],
  )
}

///|
test "shlex quote oracle 53" {
  assert_eq(
    join_command([
      "\\`", "🙂\\", "🙂;  a`", ";\\a`", "\\`🙂", "$a\n#;;🙂",
    ]),
    "'\\`' '🙂\\' '🙂;  a`' ';\\a`' '\\`🙂' '$a\n#;;🙂'",
  )
  assert_eq(
    split_command("'\\`' '🙂\\' '🙂;  a`' ';\\a`' '\\`🙂' '$a\n#;;🙂'"),
    ["\\`", "🙂\\", "🙂;  a`", ";\\a`", "\\`🙂", "$a\n#;;🙂"],
  )
}

///|
test "shlex quote oracle 54" {
  assert_eq(
    join_command(["", "$中\"\\\\", "''中$"]),
    "'' '$中\"\\\\' ''\"'\"''\"'\"'中$'",
  )
  assert_eq(split_command("'' '$中\"\\\\' ''\"'\"''\"'\"'中$'"), [
    "", "$中\"\\\\", "''中$",
  ])
}

///|
test "shlex quote oracle 55" {
  assert_eq(
    join_command(["' $'$;'`#", "", "", "`🙂", " "]),
    "''\"'\"' $'\"'\"'$;'\"'\"'`#' '' '' '`🙂' ' '",
  )
  assert_eq(split_command("''\"'\"' $'\"'\"'$;'\"'\"'`#' '' '' '`🙂' ' '"), [
    "' $'$;'`#", "", "", "`🙂", " ",
  ])
}

///|
test "shlex quote oracle 56" {
  assert_eq(join_command(["", "#"]), "'' '#'")
  assert_eq(split_command("'' '#'"), ["", "#"])
}

///|
test "shlex quote oracle 57" {
  assert_eq(
    join_command(["\n", ";aa'", "\n中中'$ ", "'$🙂中\\", "'#;\n\"'; "]),
    "'\n' ';aa'\"'\"'' '\n中中'\"'\"'$ ' ''\"'\"'$🙂中\\' ''\"'\"'#;\n\"'\"'\"'; '",
  )
  assert_eq(
    split_command(
      "'\n' ';aa'\"'\"'' '\n中中'\"'\"'$ ' ''\"'\"'$🙂中\\' ''\"'\"'#;\n\"'\"'\"'; '",
    ),
    ["\n", ";aa'", "\n中中'$ ", "'$🙂中\\", "'#;\n\"'; "],
  )
}

///|
test "shlex quote oracle 58" {
  assert_eq(
    join_command([
      "\n\n; ; a", "#$$' #🙂", "$#'$中'#中", ";", "`$a ;\n ", "中\n\na",
    ]),
    "'\n\n; ; a' '#$$'\"'\"' #🙂' '$#'\"'\"'$中'\"'\"'#中' ';' '`$a ;\n ' '中\n\na'",
  )
  assert_eq(
    split_command(
      "'\n\n; ; a' '#$$'\"'\"' #🙂' '$#'\"'\"'$中'\"'\"'#中' ';' '`$a ;\n ' '中\n\na'",
    ),
    ["\n\n; ; a", "#$$' #🙂", "$#'$中'#中", ";", "`$a ;\n ", "中\n\na"],
  )
}

///|
test "shlex quote oracle 59" {
  assert_eq(
    join_command(["` ", "\\$\"🙂 ;", "';a;a", "", "", "\""]),
    "'` ' '\\$\"🙂 ;' ''\"'\"';a;a' '' '' '\"'",
  )
  assert_eq(split_command("'` ' '\\$\"🙂 ;' ''\"'\"';a;a' '' '' '\"'"), [
    "` ", "\\$\"🙂 ;", "';a;a", "", "", "\"",
  ])
}

///|
test "shlex quote oracle 60" {
  assert_eq(
    join_command(["", " $$中", "\n", "'#a \\ \n;", "$##'#; ;\n"]),
    "'' ' $$中' '\n' ''\"'\"'#a \\ \n;' '$##'\"'\"'#; ;\n'",
  )
  assert_eq(
    split_command("'' ' $$中' '\n' ''\"'\"'#a \\ \n;' '$##'\"'\"'#; ;\n'"),
    ["", " $$中", "\n", "'#a \\ \n;", "$##'#; ;\n"],
  )
}

///|
test "shlex quote oracle 61" {
  assert_eq(join_command(["` \n#;", "\n\n$"]), "'` \n#;' '\n\n$'")
  assert_eq(split_command("'` \n#;' '\n\n$'"), ["` \n#;", "\n\n$"])
}

///|
test "shlex quote oracle 62" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 63" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 64" {
  assert_eq(
    join_command(["\\ '", "`\"a\\ #中`'"]),
    "'\\ '\"'\"'' '`\"a\\ #中`'\"'\"''",
  )
  assert_eq(split_command("'\\ '\"'\"'' '`\"a\\ #中`'\"'\"''"), [
    "\\ '", "`\"a\\ #中`'",
  ])
}

///|
test "shlex quote oracle 65" {
  assert_eq(
    join_command([
      "#🙂a\"\na'", "🙂a\"", "\n🙂#a\\;\"", "$;'\\;\\\"中 ", "🙂`🙂",
      "$\"中##中🙂a", "🙂\" \"`",
    ]),
    "'#🙂a\"\na'\"'\"'' '🙂a\"' '\n🙂#a\\;\"' '$;'\"'\"'\\;\\\"中 ' '🙂`🙂' '$\"中##中🙂a' '🙂\" \"`'",
  )
  assert_eq(
    split_command(
      "'#🙂a\"\na'\"'\"'' '🙂a\"' '\n🙂#a\\;\"' '$;'\"'\"'\\;\\\"中 ' '🙂`🙂' '$\"中##中🙂a' '🙂\" \"`'",
    ),
    [
      "#🙂a\"\na'", "🙂a\"", "\n🙂#a\\;\"", "$;'\\;\\\"中 ", "🙂`🙂",
      "$\"中##中🙂a", "🙂\" \"`",
    ],
  )
}

///|
test "shlex quote oracle 66" {
  assert_eq(join_command([""]), "''")
  assert_eq(split_command("''"), [""])
}

///|
test "shlex quote oracle 67" {
  assert_eq(
    join_command([
      "# a\"a;\\", " \\🙂;", "`$\\'a中#中", "\"", "中", "$中\"' `\\", "`$$\\\n'a",
    ]),
    "'# a\"a;\\' ' \\🙂;' '`$\\'\"'\"'a中#中' '\"' '中' '$中\"'\"'\"' `\\' '`$$\\\n'\"'\"'a'",
  )
  assert_eq(
    split_command(
      "'# a\"a;\\' ' \\🙂;' '`$\\'\"'\"'a中#中' '\"' '中' '$中\"'\"'\"' `\\' '`$$\\\n'\"'\"'a'",
    ),
    [
      "# a\"a;\\", " \\🙂;", "`$\\'a中#中", "\"", "中", "$中\"' `\\", "`$$\\\n'a",
    ],
  )
}

///|
test "shlex quote oracle 68" {
  assert_eq(
    join_command(["`;\na", "\n\n", "' $   a;#", "`\";", "🙂\\🙂"]),
    "'`;\na' '\n\n' ''\"'\"' $   a;#' '`\";' '🙂\\🙂'",
  )
  assert_eq(
    split_command("'`;\na' '\n\n' ''\"'\"' $   a;#' '`\";' '🙂\\🙂'"),
    ["`;\na", "\n\n", "' $   a;#", "`\";", "🙂\\🙂"],
  )
}

///|
test "shlex quote oracle 69" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 70" {
  assert_eq(
    join_command(["中\";'\"a`", "#a#a`;", "#", "a#\\\"\n", ""]),
    "'中\";'\"'\"'\"a`' '#a#a`;' '#' 'a#\\\"\n' ''",
  )
  assert_eq(split_command("'中\";'\"'\"'\"a`' '#a#a`;' '#' 'a#\\\"\n' ''"), [
    "中\";'\"a`", "#a#a`;", "#", "a#\\\"\n", "",
  ])
}

///|
test "shlex quote oracle 71" {
  assert_eq(
    join_command(["\\ a中\na$`$", "", "", "a'''🙂\\\"", ""]),
    "'\\ a中\na$`$' '' '' 'a'\"'\"''\"'\"''\"'\"'🙂\\\"' ''",
  )
  assert_eq(
    split_command("'\\ a中\na$`$' '' '' 'a'\"'\"''\"'\"''\"'\"'🙂\\\"' ''"),
    ["\\ a中\na$`$", "", "", "a'''🙂\\\"", ""],
  )
}

///|
test "shlex quote oracle 72" {
  assert_eq(join_command(["中\n\\ a`\"中;"]), "'中\n\\ a`\"中;'")
  assert_eq(split_command("'中\n\\ a`\"中;'"), ["中\n\\ a`\"中;"])
}

///|
test "shlex quote oracle 73" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 74" {
  assert_eq(join_command(["`\"#", "$🙂'a\""]), "'`\"#' '$🙂'\"'\"'a\"'")
  assert_eq(split_command("'`\"#' '$🙂'\"'\"'a\"'"), ["`\"#", "$🙂'a\""])
}

///|
test "shlex quote oracle 75" {
  assert_eq(join_command([""]), "''")
  assert_eq(split_command("''"), [""])
}

///|
test "shlex quote oracle 76" {
  assert_eq(
    join_command(["\n$", "$\n", "🙂\n🙂`a", "", "#\"'\n#;\n", ""]),
    "'\n$' '$\n' '🙂\n🙂`a' '' '#\"'\"'\"'\n#;\n' ''",
  )
  assert_eq(
    split_command("'\n$' '$\n' '🙂\n🙂`a' '' '#\"'\"'\"'\n#;\n' ''"),
    ["\n$", "$\n", "🙂\n🙂`a", "", "#\"'\n#;\n", ""],
  )
}

///|
test "shlex quote oracle 77" {
  assert_eq(
    join_command([
      "", " \n'#\\$#`", " #\"\"\\\"'", "a\n ;\n🙂$a", "a$\"", "\n\"\n'`",
    ]),
    "'' ' \n'\"'\"'#\\$#`' ' #\"\"\\\"'\"'\"'' 'a\n ;\n🙂$a' 'a$\"' '\n\"\n'\"'\"'`'",
  )
  assert_eq(
    split_command(
      "'' ' \n'\"'\"'#\\$#`' ' #\"\"\\\"'\"'\"'' 'a\n ;\n🙂$a' 'a$\"' '\n\"\n'\"'\"'`'",
    ),
    ["", " \n'#\\$#`", " #\"\"\\\"'", "a\n ;\n🙂$a", "a$\"", "\n\"\n'`"],
  )
}

///|
test "shlex quote oracle 78" {
  assert_eq(join_command(["#\""]), "'#\"'")
  assert_eq(split_command("'#\"'"), ["#\""])
}

///|
test "shlex quote oracle 79" {
  assert_eq(
    join_command([
      ";🙂\n$`中 #", "🙂#'\n\n' ", "`", "a中\n\n\\🙂🙂\\中", "\" \\",
      "`\\",
    ]),
    "';🙂\n$`中 #' '🙂#'\"'\"'\n\n'\"'\"' ' '`' 'a中\n\n\\🙂🙂\\中' '\" \\' '`\\'",
  )
  assert_eq(
    split_command(
      "';🙂\n$`中 #' '🙂#'\"'\"'\n\n'\"'\"' ' '`' 'a中\n\n\\🙂🙂\\中' '\" \\' '`\\'",
    ),
    [
      ";🙂\n$`中 #", "🙂#'\n\n' ", "`", "a中\n\n\\🙂🙂\\中", "\" \\",
      "`\\",
    ],
  )
}

///|
test "shlex quote oracle 80" {
  assert_eq(
    join_command(["中#", ";a", "$;`##;;\"a", ";a🙂;\\\";"]),
    "'中#' ';a' '$;`##;;\"a' ';a🙂;\\\";'",
  )
  assert_eq(split_command("'中#' ';a' '$;`##;;\"a' ';a🙂;\\\";'"), [
    "中#", ";a", "$;`##;;\"a", ";a🙂;\\\";",
  ])
}

///|
test "shlex quote oracle 81" {
  assert_eq(
    join_command(["##\n a", "`", "", "", "$\\;\n'", "\na`#\"", "\\`'"]),
    "'##\n a' '`' '' '' '$\\;\n'\"'\"'' '\na`#\"' '\\`'\"'\"''",
  )
  assert_eq(
    split_command("'##\n a' '`' '' '' '$\\;\n'\"'\"'' '\na`#\"' '\\`'\"'\"''"),
    ["##\n a", "`", "", "", "$\\;\n'", "\na`#\"", "\\`'"],
  )
}

///|
test "shlex quote oracle 82" {
  assert_eq(
    join_command(["", "  $\\\\a;a", " '\\", "🙂🙂  "]),
    "'' '  $\\\\a;a' ' '\"'\"'\\' '🙂🙂  '",
  )
  assert_eq(split_command("'' '  $\\\\a;a' ' '\"'\"'\\' '🙂🙂  '"), [
    "", "  $\\\\a;a", " '\\", "🙂🙂  ",
  ])
}

///|
test "shlex quote oracle 83" {
  assert_eq(
    join_command(["", "", " ", "🙂中;\\\n", "\na'\n中`a", ";  "]),
    "'' '' ' ' '🙂中;\\\n' '\na'\"'\"'\n中`a' ';  '",
  )
  assert_eq(
    split_command("'' '' ' ' '🙂中;\\\n' '\na'\"'\"'\n中`a' ';  '"),
    ["", "", " ", "🙂中;\\\n", "\na'\n中`a", ";  "],
  )
}

///|
test "shlex quote oracle 84" {
  assert_eq(
    join_command(["\\🙂\"\"`🙂🙂", "$##\n\\$;\"$", "'\na", "`\"#;"]),
    "'\\🙂\"\"`🙂🙂' '$##\n\\$;\"$' ''\"'\"'\na' '`\"#;'",
  )
  assert_eq(
    split_command("'\\🙂\"\"`🙂🙂' '$##\n\\$;\"$' ''\"'\"'\na' '`\"#;'"),
    ["\\🙂\"\"`🙂🙂", "$##\n\\$;\"$", "'\na", "`\"#;"],
  )
}

///|
test "shlex quote oracle 85" {
  assert_eq(
    join_command([
      "中##\"`$", "\"a`🙂中", "#🙂#", "`", "", "\n\"`a\n🙂中'", ";` #中\\'",
    ]),
    "'中##\"`$' '\"a`🙂中' '#🙂#' '`' '' '\n\"`a\n🙂中'\"'\"'' ';` #中\\'\"'\"''",
  )
  assert_eq(
    split_command(
      "'中##\"`$' '\"a`🙂中' '#🙂#' '`' '' '\n\"`a\n🙂中'\"'\"'' ';` #中\\'\"'\"''",
    ),
    [
      "中##\"`$", "\"a`🙂中", "#🙂#", "`", "", "\n\"`a\n🙂中'", ";` #中\\'",
    ],
  )
}

///|
test "shlex quote oracle 86" {
  assert_eq(join_command(["#$;\n#'a中"]), "'#$;\n#'\"'\"'a中'")
  assert_eq(split_command("'#$;\n#'\"'\"'a中'"), ["#$;\n#'a中"])
}

///|
test "shlex quote oracle 87" {
  assert_eq(
    join_command([
      "\n中#中$\\ #", ";'", "a`;;\"🙂$'", "`🙂aa#$`🙂\n", "中中\\\n\"a\\中\n",
      "'中$$'\"$",
    ]),
    "'\n中#中$\\ #' ';'\"'\"'' 'a`;;\"🙂$'\"'\"'' '`🙂aa#$`🙂\n' '中中\\\n\"a\\中\n' ''\"'\"'中$$'\"'\"'\"$'",
  )
  assert_eq(
    split_command(
      "'\n中#中$\\ #' ';'\"'\"'' 'a`;;\"🙂$'\"'\"'' '`🙂aa#$`🙂\n' '中中\\\n\"a\\中\n' ''\"'\"'中$$'\"'\"'\"$'",
    ),
    [
      "\n中#中$\\ #", ";'", "a`;;\"🙂$'", "`🙂aa#$`🙂\n", "中中\\\n\"a\\中\n",
      "'中$$'\"$",
    ],
  )
}

///|
test "shlex quote oracle 88" {
  assert_eq(
    join_command(["\"'", "\\a\n中`'", "\"a '", "$a \\\\"]),
    "'\"'\"'\"'' '\\a\n中`'\"'\"'' '\"a '\"'\"'' '$a \\\\'",
  )
  assert_eq(
    split_command("'\"'\"'\"'' '\\a\n中`'\"'\"'' '\"a '\"'\"'' '$a \\\\'"),
    ["\"'", "\\a\n中`'", "\"a '", "$a \\\\"],
  )
}

///|
test "shlex quote oracle 89" {
  assert_eq(
    join_command(["🙂a; ", "", "\\\n中中 ;$中", "", "\\`\\\\`;aa"]),
    "'🙂a; ' '' '\\\n中中 ;$中' '' '\\`\\\\`;aa'",
  )
  assert_eq(split_command("'🙂a; ' '' '\\\n中中 ;$中' '' '\\`\\\\`;aa'"), [
    "🙂a; ", "", "\\\n中中 ;$中", "", "\\`\\\\`;aa",
  ])
}

///|
test "shlex quote oracle 90" {
  assert_eq(
    join_command(["\n `a中'\n`\"", "'", "🙂", "#🙂中"]),
    "'\n `a中'\"'\"'\n`\"' ''\"'\"'' '🙂' '#🙂中'",
  )
  assert_eq(
    split_command("'\n `a中'\"'\"'\n`\"' ''\"'\"'' '🙂' '#🙂中'"),
    ["\n `a中'\n`\"", "'", "🙂", "#🙂中"],
  )
}

///|
test "shlex quote oracle 91" {
  assert_eq(join_command([";;'"]), "';;'\"'\"''")
  assert_eq(split_command("';;'\"'\"''"), [";;'"])
}

///|
test "shlex quote oracle 92" {
  assert_eq(
    join_command(["\"中", " $\\\"\\", "\\$ \n`$"]),
    "'\"中' ' $\\\"\\' '\\$ \n`$'",
  )
  assert_eq(split_command("'\"中' ' $\\\"\\' '\\$ \n`$'"), [
    "\"中", " $\\\"\\", "\\$ \n`$",
  ])
}

///|
test "shlex quote oracle 93" {
  assert_eq(join_command(["", "", "a\n  "]), "'' '' 'a\n  '")
  assert_eq(split_command("'' '' 'a\n  '"), ["", "", "a\n  "])
}

///|
test "shlex quote oracle 94" {
  assert_eq(
    join_command([
      " 🙂🙂#a`#\\", " \n", "\n\"中中中'\n #", "🙂🙂中", "a`#",
    ]),
    "' 🙂🙂#a`#\\' ' \n' '\n\"中中中'\"'\"'\n #' '🙂🙂中' 'a`#'",
  )
  assert_eq(
    split_command(
      "' 🙂🙂#a`#\\' ' \n' '\n\"中中中'\"'\"'\n #' '🙂🙂中' 'a`#'",
    ),
    [" 🙂🙂#a`#\\", " \n", "\n\"中中中'\n #", "🙂🙂中", "a`#"],
  )
}

///|
test "shlex quote oracle 95" {
  assert_eq(
    join_command([
      "; $", "`\n中 a🙂#", "$🙂`a$🙂", "#\\`$中$\n", "", "'", "`a\\a",
    ]),
    "'; $' '`\n中 a🙂#' '$🙂`a$🙂' '#\\`$中$\n' '' ''\"'\"'' '`a\\a'",
  )
  assert_eq(
    split_command(
      "'; $' '`\n中 a🙂#' '$🙂`a$🙂' '#\\`$中$\n' '' ''\"'\"'' '`a\\a'",
    ),
    ["; $", "`\n中 a🙂#", "$🙂`a$🙂", "#\\`$中$\n", "", "'", "`a\\a"],
  )
}

///|
test "shlex quote oracle 96" {
  assert_eq(
    join_command(["'$🙂$;` ;", "\\", "🙂;$\\`''\n中"]),
    "''\"'\"'$🙂$;` ;' '\\' '🙂;$\\`'\"'\"''\"'\"'\n中'",
  )
  assert_eq(
    split_command("''\"'\"'$🙂$;` ;' '\\' '🙂;$\\`'\"'\"''\"'\"'\n中'"),
    ["'$🙂$;` ;", "\\", "🙂;$\\`''\n中"],
  )
}

///|
test "shlex quote oracle 97" {
  assert_eq(
    join_command([";\"#\\", ";a;中#;'' ", "\n中$中 #", "\\#🙂$#"]),
    "';\"#\\' ';a;中#;'\"'\"''\"'\"' ' '\n中$中 #' '\\#🙂$#'",
  )
  assert_eq(
    split_command(
      "';\"#\\' ';a;中#;'\"'\"''\"'\"' ' '\n中$中 #' '\\#🙂$#'",
    ),
    [";\"#\\", ";a;中#;'' ", "\n中$中 #", "\\#🙂$#"],
  )
}

///|
test "shlex quote oracle 98" {
  assert_eq(
    join_command([
      ";' a`\"'", " ", "\"\n\\", "#\\🙂a中a#", "a\n\" 🙂`\\", "🙂$$🙂#a$🙂",
      "'",
    ]),
    "';'\"'\"' a`\"'\"'\"'' ' ' '\"\n\\' '#\\🙂a中a#' 'a\n\" 🙂`\\' '🙂$$🙂#a$🙂' ''\"'\"''",
  )
  assert_eq(
    split_command(
      "';'\"'\"' a`\"'\"'\"'' ' ' '\"\n\\' '#\\🙂a中a#' 'a\n\" 🙂`\\' '🙂$$🙂#a$🙂' ''\"'\"''",
    ),
    [
      ";' a`\"'", " ", "\"\n\\", "#\\🙂a中a#", "a\n\" 🙂`\\", "🙂$$🙂#a$🙂",
      "'",
    ],
  )
}

///|
test "shlex quote oracle 99" {
  assert_eq(join_command(["#"]), "'#'")
  assert_eq(split_command("'#'"), ["#"])
}

///|
test "shlex quote oracle 100" {
  assert_eq(
    join_command([
      " \\$'\";#a", "\\\n", "a$\\\n\n\n\\", "\\\";#", "中\"$中中`\"中 ", "#\"``中",
    ]),
    "' \\$'\"'\"'\";#a' '\\\n' 'a$\\\n\n\n\\' '\\\";#' '中\"$中中`\"中 ' '#\"``中'",
  )
  assert_eq(
    split_command(
      "' \\$'\"'\"'\";#a' '\\\n' 'a$\\\n\n\n\\' '\\\";#' '中\"$中中`\"中 ' '#\"``中'",
    ),
    [
      " \\$'\";#a", "\\\n", "a$\\\n\n\n\\", "\\\";#", "中\"$中中`\"中 ", "#\"``中",
    ],
  )
}

///|
test "shlex quote oracle 101" {
  assert_eq(
    join_command([
      "#`\n#\n'`\"#", "`\\;`;`🙂a$", "", "中🙂中' $\na`", "`$`", "\\``'$\\",
      "🙂'; # $",
    ]),
    "'#`\n#\n'\"'\"'`\"#' '`\\;`;`🙂a$' '' '中🙂中'\"'\"' $\na`' '`$`' '\\``'\"'\"'$\\' '🙂'\"'\"'; # $'",
  )
  assert_eq(
    split_command(
      "'#`\n#\n'\"'\"'`\"#' '`\\;`;`🙂a$' '' '中🙂中'\"'\"' $\na`' '`$`' '\\``'\"'\"'$\\' '🙂'\"'\"'; # $'",
    ),
    [
      "#`\n#\n'`\"#", "`\\;`;`🙂a$", "", "中🙂中' $\na`", "`$`", "\\``'$\\",
      "🙂'; # $",
    ],
  )
}

///|
test "shlex quote oracle 102" {
  assert_eq(
    join_command([
      "a'中$\\#", "", "$中\"中;``中中", "'`a\n", "🙂`", "中$",
    ]),
    "'a'\"'\"'中$\\#' '' '$中\"中;``中中' ''\"'\"'`a\n' '🙂`' '中$'",
  )
  assert_eq(
    split_command(
      "'a'\"'\"'中$\\#' '' '$中\"中;``中中' ''\"'\"'`a\n' '🙂`' '中$'",
    ),
    ["a'中$\\#", "", "$中\"中;``中中", "'`a\n", "🙂`", "中$"],
  )
}

///|
test "shlex quote oracle 103" {
  assert_eq(
    join_command(["\n; a中\\;\"", "''中'", "🙂;\"`a", " ##\\\"", "$;🙂'`"]),
    "'\n; a中\\;\"' ''\"'\"''\"'\"'中'\"'\"'' '🙂;\"`a' ' ##\\\"' '$;🙂'\"'\"'`'",
  )
  assert_eq(
    split_command(
      "'\n; a中\\;\"' ''\"'\"''\"'\"'中'\"'\"'' '🙂;\"`a' ' ##\\\"' '$;🙂'\"'\"'`'",
    ),
    ["\n; a中\\;\"", "''中'", "🙂;\"`a", " ##\\\"", "$;🙂'`"],
  )
}

///|
test "shlex quote oracle 104" {
  assert_eq(join_command(["\"'"]), "'\"'\"'\"''")
  assert_eq(split_command("'\"'\"'\"''"), ["\"'"])
}

///|
test "shlex quote oracle 105" {
  assert_eq(join_command(["中#", "'中\n中"]), "'中#' ''\"'\"'中\n中'")
  assert_eq(split_command("'中#' ''\"'\"'中\n中'"), ["中#", "'中\n中"])
}

///|
test "shlex quote oracle 106" {
  assert_eq(
    join_command([" a`\"", ";`;\\", "🙂\\`a'", "🙂", "中;"]),
    "' a`\"' ';`;\\' '🙂\\`a'\"'\"'' '🙂' '中;'",
  )
  assert_eq(split_command("' a`\"' ';`;\\' '🙂\\`a'\"'\"'' '🙂' '中;'"), [
    " a`\"", ";`;\\", "🙂\\`a'", "🙂", "中;",
  ])
}

///|
test "shlex quote oracle 107" {
  assert_eq(join_command(["#\n\\中a`", "\\🙂"]), "'#\n\\中a`' '\\🙂'")
  assert_eq(split_command("'#\n\\中a`' '\\🙂'"), ["#\n\\中a`", "\\🙂"])
}

///|
test "shlex quote oracle 108" {
  assert_eq(
    join_command(["#", "", "'\\$\\\";", "🙂\"a  '"]),
    "'#' '' ''\"'\"'\\$\\\";' '🙂\"a  '\"'\"''",
  )
  assert_eq(split_command("'#' '' ''\"'\"'\\$\\\";' '🙂\"a  '\"'\"''"), [
    "#", "", "'\\$\\\";", "🙂\"a  '",
  ])
}

///|
test "shlex quote oracle 109" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 110" {
  assert_eq(
    join_command([
      " 中", "'中\\🙂a", "🙂`中#;🙂", "", "$ \"中🙂\n\"`", "", "中$`;$\n",
    ]),
    "' 中' ''\"'\"'中\\🙂a' '🙂`中#;🙂' '' '$ \"中🙂\n\"`' '' '中$`;$\n'",
  )
  assert_eq(
    split_command(
      "' 中' ''\"'\"'中\\🙂a' '🙂`中#;🙂' '' '$ \"中🙂\n\"`' '' '中$`;$\n'",
    ),
    [
      " 中", "'中\\🙂a", "🙂`中#;🙂", "", "$ \"中🙂\n\"`", "", "中$`;$\n",
    ],
  )
}

///|
test "shlex quote oracle 111" {
  assert_eq(
    join_command(["中;'';", "`🙂` ;\\"]),
    "'中;'\"'\"''\"'\"';' '`🙂` ;\\'",
  )
  assert_eq(split_command("'中;'\"'\"''\"'\"';' '`🙂` ;\\'"), [
    "中;'';", "`🙂` ;\\",
  ])
}

///|
test "shlex quote oracle 112" {
  assert_eq(
    join_command(["`;\\\"a", "'`\\", " #中🙂$🙂", "#中\\🙂🙂 $"]),
    "'`;\\\"a' ''\"'\"'`\\' ' #中🙂$🙂' '#中\\🙂🙂 $'",
  )
  assert_eq(
    split_command("'`;\\\"a' ''\"'\"'`\\' ' #中🙂$🙂' '#中\\🙂🙂 $'"),
    ["`;\\\"a", "'`\\", " #中🙂$🙂", "#中\\🙂🙂 $"],
  )
}

///|
test "shlex quote oracle 113" {
  assert_eq(
    join_command([
      "🙂\\🙂中'a`\"'", "  ", "#\\`\\`", "#`中 ", "\"中` 中\\;a",
    ]),
    "'🙂\\🙂中'\"'\"'a`\"'\"'\"'' '  ' '#\\`\\`' '#`中 ' '\"中` 中\\;a'",
  )
  assert_eq(
    split_command(
      "'🙂\\🙂中'\"'\"'a`\"'\"'\"'' '  ' '#\\`\\`' '#`中 ' '\"中` 中\\;a'",
    ),
    ["🙂\\🙂中'a`\"'", "  ", "#\\`\\`", "#`中 ", "\"中` 中\\;a"],
  )
}

///|
test "shlex quote oracle 114" {
  assert_eq(
    join_command([
      "$", "$\"\n🙂\\", "", " #$", "$##'中", "\\\\", " 🙂中\"`",
    ]),
    "'$' '$\"\n🙂\\' '' ' #$' '$##'\"'\"'中' '\\\\' ' 🙂中\"`'",
  )
  assert_eq(
    split_command(
      "'$' '$\"\n🙂\\' '' ' #$' '$##'\"'\"'中' '\\\\' ' 🙂中\"`'",
    ),
    ["$", "$\"\n🙂\\", "", " #$", "$##'中", "\\\\", " 🙂中\"`"],
  )
}

///|
test "shlex quote oracle 115" {
  assert_eq(
    join_command([";; 'a\"", "中a中\n", "$🙂🙂`$"]),
    "';; '\"'\"'a\"' '中a中\n' '$🙂🙂`$'",
  )
  assert_eq(split_command("';; '\"'\"'a\"' '中a中\n' '$🙂🙂`$'"), [
    ";; 'a\"", "中a中\n", "$🙂🙂`$",
  ])
}

///|
test "shlex quote oracle 116" {
  assert_eq(
    join_command(["$'```;'", ";;a;中中'\\"]),
    "'$'\"'\"'```;'\"'\"'' ';;a;中中'\"'\"'\\'",
  )
  assert_eq(split_command("'$'\"'\"'```;'\"'\"'' ';;a;中中'\"'\"'\\'"), [
    "$'```;'", ";;a;中中'\\",
  ])
}

///|
test "shlex quote oracle 117" {
  assert_eq(
    join_command([
      "#a", "中'$a#$'\n", "'\"a\"#$", "'\"🙂🙂", "$\\;`$", "🙂$\\``", "`'`",
    ]),
    "'#a' '中'\"'\"'$a#$'\"'\"'\n' ''\"'\"'\"a\"#$' ''\"'\"'\"🙂🙂' '$\\;`$' '🙂$\\``' '`'\"'\"'`'",
  )
  assert_eq(
    split_command(
      "'#a' '中'\"'\"'$a#$'\"'\"'\n' ''\"'\"'\"a\"#$' ''\"'\"'\"🙂🙂' '$\\;`$' '🙂$\\``' '`'\"'\"'`'",
    ),
    [
      "#a", "中'$a#$'\n", "'\"a\"#$", "'\"🙂🙂", "$\\;`$", "🙂$\\``", "`'`",
    ],
  )
}

///|
test "shlex quote oracle 118" {
  assert_eq(
    join_command([
      "$###$`;", "\\aa#中;🙂", "`'中 ;'$ ", "'🙂$🙂\n", "\n\"`🙂\\\\'$'",
    ]),
    "'$###$`;' '\\aa#中;🙂' '`'\"'\"'中 ;'\"'\"'$ ' ''\"'\"'🙂$🙂\n' '\n\"`🙂\\\\'\"'\"'$'\"'\"''",
  )
  assert_eq(
    split_command(
      "'$###$`;' '\\aa#中;🙂' '`'\"'\"'中 ;'\"'\"'$ ' ''\"'\"'🙂$🙂\n' '\n\"`🙂\\\\'\"'\"'$'\"'\"''",
    ),
    [
      "$###$`;", "\\aa#中;🙂", "`'中 ;'$ ", "'🙂$🙂\n", "\n\"`🙂\\\\'$'",
    ],
  )
}

///|
test "shlex quote oracle 119" {
  assert_eq(
    join_command([
      ";;$a🙂#a", "\\", "\n'\n$$$", ";a\\a", "🙂;$'\n'\\🙂", "🙂 ", "\n\\';'#🙂''",
    ]),
    "';;$a🙂#a' '\\' '\n'\"'\"'\n$$$' ';a\\a' '🙂;$'\"'\"'\n'\"'\"'\\🙂' '🙂 ' '\n\\'\"'\"';'\"'\"'#🙂'\"'\"''\"'\"''",
  )
  assert_eq(
    split_command(
      "';;$a🙂#a' '\\' '\n'\"'\"'\n$$$' ';a\\a' '🙂;$'\"'\"'\n'\"'\"'\\🙂' '🙂 ' '\n\\'\"'\"';'\"'\"'#🙂'\"'\"''\"'\"''",
    ),
    [
      ";;$a🙂#a", "\\", "\n'\n$$$", ";a\\a", "🙂;$'\n'\\🙂", "🙂 ", "\n\\';'#🙂''",
    ],
  )
}

///|
test "shlex quote oracle 120" {
  assert_eq(
    join_command(["\n", "\"\n;", "\n🙂##  ", "'#🙂\"\"$\n`"]),
    "'\n' '\"\n;' '\n🙂##  ' ''\"'\"'#🙂\"\"$\n`'",
  )
  assert_eq(split_command("'\n' '\"\n;' '\n🙂##  ' ''\"'\"'#🙂\"\"$\n`'"), [
    "\n", "\"\n;", "\n🙂##  ", "'#🙂\"\"$\n`",
  ])
}

///|
test "shlex quote oracle 121" {
  assert_eq(
    join_command(["中;", "#`'$🙂;`\\;"]),
    "'中;' '#`'\"'\"'$🙂;`\\;'",
  )
  assert_eq(split_command("'中;' '#`'\"'\"'$🙂;`\\;'"), [
    "中;", "#`'$🙂;`\\;",
  ])
}

///|
test "shlex quote oracle 122" {
  assert_eq(join_command(["#", "#$", " $中🙂 "]), "'#' '#$' ' $中🙂 '")
  assert_eq(split_command("'#' '#$' ' $中🙂 '"), ["#", "#$", " $中🙂 "])
}

///|
test "shlex quote oracle 123" {
  assert_eq(
    join_command(["\\🙂 \\\n", " a\na $🙂\\", "\"$", "\\\n中$`", "a#"]),
    "'\\🙂 \\\n' ' a\na $🙂\\' '\"$' '\\\n中$`' 'a#'",
  )
  assert_eq(
    split_command("'\\🙂 \\\n' ' a\na $🙂\\' '\"$' '\\\n中$`' 'a#'"),
    ["\\🙂 \\\n", " a\na $🙂\\", "\"$", "\\\n中$`", "a#"],
  )
}

///|
test "shlex quote oracle 124" {
  assert_eq(join_command(["\n``中\""]), "'\n``中\"'")
  assert_eq(split_command("'\n``中\"'"), ["\n``中\""])
}

///|
test "shlex quote oracle 125" {
  assert_eq(
    join_command(["'\\`#a🙂a#🙂", "\n \"\"$\""]),
    "''\"'\"'\\`#a🙂a#🙂' '\n \"\"$\"'",
  )
  assert_eq(split_command("''\"'\"'\\`#a🙂a#🙂' '\n \"\"$\"'"), [
    "'\\`#a🙂a#🙂", "\n \"\"$\"",
  ])
}

///|
test "shlex quote oracle 126" {
  assert_eq(
    join_command(["'\";`\"\"", "", "#\n中\n;$", " 🙂$a;\n'", ""]),
    "''\"'\"'\";`\"\"' '' '#\n中\n;$' ' 🙂$a;\n'\"'\"'' ''",
  )
  assert_eq(
    split_command("''\"'\"'\";`\"\"' '' '#\n中\n;$' ' 🙂$a;\n'\"'\"'' ''"),
    ["'\";`\"\"", "", "#\n中\n;$", " 🙂$a;\n'", ""],
  )
}

///|
test "shlex quote oracle 127" {
  assert_eq(
    join_command(["🙂中", "`", "", "'"]),
    "'🙂中' '`' '' ''\"'\"''",
  )
  assert_eq(split_command("'🙂中' '`' '' ''\"'\"''"), [
    "🙂中", "`", "", "'",
  ])
}

///|
test "shlex quote oracle 128" {
  assert_eq(
    join_command(["'", "中", "`中", "a", "a`$#'a;", "", ";\n$'\""]),
    "''\"'\"'' '中' '`中' a 'a`$#'\"'\"'a;' '' ';\n$'\"'\"'\"'",
  )
  assert_eq(
    split_command("''\"'\"'' '中' '`中' a 'a`$#'\"'\"'a;' '' ';\n$'\"'\"'\"'"),
    ["'", "中", "`中", "a", "a`$#'a;", "", ";\n$'\""],
  )
}

///|
test "shlex quote oracle 129" {
  assert_eq(
    join_command(["🙂'中", "中\" 中中\\a#", "\n;\n'#a ", "\"\\🙂\\'"]),
    "'🙂'\"'\"'中' '中\" 中中\\a#' '\n;\n'\"'\"'#a ' '\"\\🙂\\'\"'\"''",
  )
  assert_eq(
    split_command(
      "'🙂'\"'\"'中' '中\" 中中\\a#' '\n;\n'\"'\"'#a ' '\"\\🙂\\'\"'\"''",
    ),
    ["🙂'中", "中\" 中中\\a#", "\n;\n'#a ", "\"\\🙂\\'"],
  )
}

///|
test "shlex quote oracle 130" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 131" {
  assert_eq(
    join_command([
      "", "\\ ;#\n 中🙂", "'$;;;🙂\n\"a", "\na🙂'🙂", "中#a;a中", " ;#\n '",
    ]),
    "'' '\\ ;#\n 中🙂' ''\"'\"'$;;;🙂\n\"a' '\na🙂'\"'\"'🙂' '中#a;a中' ' ;#\n '\"'\"''",
  )
  assert_eq(
    split_command(
      "'' '\\ ;#\n 中🙂' ''\"'\"'$;;;🙂\n\"a' '\na🙂'\"'\"'🙂' '中#a;a中' ' ;#\n '\"'\"''",
    ),
    [
      "", "\\ ;#\n 中🙂", "'$;;;🙂\n\"a", "\na🙂'🙂", "中#a;a中", " ;#\n '",
    ],
  )
}

///|
test "shlex quote oracle 132" {
  assert_eq(
    join_command([
      " ';`中`🙂$", "\n \"$\n\\\n\"", "中", "", "'\\  '", "a  $`\"中中",
    ]),
    "' '\"'\"';`中`🙂$' '\n \"$\n\\\n\"' '中' '' ''\"'\"'\\  '\"'\"'' 'a  $`\"中中'",
  )
  assert_eq(
    split_command(
      "' '\"'\"';`中`🙂$' '\n \"$\n\\\n\"' '中' '' ''\"'\"'\\  '\"'\"'' 'a  $`\"中中'",
    ),
    [" ';`中`🙂$", "\n \"$\n\\\n\"", "中", "", "'\\  '", "a  $`\"中中"],
  )
}

///|
test "shlex quote oracle 133" {
  assert_eq(
    join_command([
      "中\\🙂\"`", "\\🙂#$`", "\"中", "", "  `a#🙂中", "🙂中;;'`  ",
      " ; \\🙂'\\",
    ]),
    "'中\\🙂\"`' '\\🙂#$`' '\"中' '' '  `a#🙂中' '🙂中;;'\"'\"'`  ' ' ; \\🙂'\"'\"'\\'",
  )
  assert_eq(
    split_command(
      "'中\\🙂\"`' '\\🙂#$`' '\"中' '' '  `a#🙂中' '🙂中;;'\"'\"'`  ' ' ; \\🙂'\"'\"'\\'",
    ),
    [
      "中\\🙂\"`", "\\🙂#$`", "\"中", "", "  `a#🙂中", "🙂中;;'`  ",
      " ; \\🙂'\\",
    ],
  )
}

///|
test "shlex quote oracle 134" {
  assert_eq(
    join_command([
      "$# aaa`a", "", "\n$ $a", "#$\n$🙂`🙂\"🙂", "🙂", "a ",
    ]),
    "'$# aaa`a' '' '\n$ $a' '#$\n$🙂`🙂\"🙂' '🙂' 'a '",
  )
  assert_eq(
    split_command("'$# aaa`a' '' '\n$ $a' '#$\n$🙂`🙂\"🙂' '🙂' 'a '"),
    ["$# aaa`a", "", "\n$ $a", "#$\n$🙂`🙂\"🙂", "🙂", "a "],
  )
}

///|
test "shlex quote oracle 135" {
  assert_eq(join_command([""]), "''")
  assert_eq(split_command("''"), [""])
}

///|
test "shlex quote oracle 136" {
  assert_eq(
    join_command(["\n \n ", "$\\🙂🙂", "#🙂\\a'"]),
    "'\n \n ' '$\\🙂🙂' '#🙂\\a'\"'\"''",
  )
  assert_eq(split_command("'\n \n ' '$\\🙂🙂' '#🙂\\a'\"'\"''"), [
    "\n \n ", "$\\🙂🙂", "#🙂\\a'",
  ])
}

///|
test "shlex quote oracle 137" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 138" {
  assert_eq(
    join_command(["$", "\\\\🙂;$` $", "", "\n;##;; `\"", "a🙂", ";#\\"]),
    "'$' '\\\\🙂;$` $' '' '\n;##;; `\"' 'a🙂' ';#\\'",
  )
  assert_eq(
    split_command("'$' '\\\\🙂;$` $' '' '\n;##;; `\"' 'a🙂' ';#\\'"),
    ["$", "\\\\🙂;$` $", "", "\n;##;; `\"", "a🙂", ";#\\"],
  )
}

///|
test "shlex quote oracle 139" {
  assert_eq(
    join_command(["🙂;`🙂#", "\"#a\n\\;中a中", "\\'$\n\na🙂中a"]),
    "'🙂;`🙂#' '\"#a\n\\;中a中' '\\'\"'\"'$\n\na🙂中a'",
  )
  assert_eq(
    split_command("'🙂;`🙂#' '\"#a\n\\;中a中' '\\'\"'\"'$\n\na🙂中a'"),
    ["🙂;`🙂#", "\"#a\n\\;中a中", "\\'$\n\na🙂中a"],
  )
}

///|
test "shlex quote oracle 140" {
  assert_eq(
    join_command(["\" # aa", " \"", "';🙂;", "🙂''#\na;"]),
    "'\" # aa' ' \"' ''\"'\"';🙂;' '🙂'\"'\"''\"'\"'#\na;'",
  )
  assert_eq(
    split_command("'\" # aa' ' \"' ''\"'\"';🙂;' '🙂'\"'\"''\"'\"'#\na;'"),
    ["\" # aa", " \"", "';🙂;", "🙂''#\na;"],
  )
}

///|
test "shlex quote oracle 141" {
  assert_eq(join_command(["\"#$a\na\n\""]), "'\"#$a\na\n\"'")
  assert_eq(split_command("'\"#$a\na\n\"'"), ["\"#$a\na\n\""])
}

///|
test "shlex quote oracle 142" {
  assert_eq(
    join_command([
      "`;\\\"'", "🙂\\", "\" \n$\"$中a", "$\\#\n \\\\ `", "🙂\\#$🙂#$;",
    ]),
    "'`;\\\"'\"'\"'' '🙂\\' '\" \n$\"$中a' '$\\#\n \\\\ `' '🙂\\#$🙂#$;'",
  )
  assert_eq(
    split_command(
      "'`;\\\"'\"'\"'' '🙂\\' '\" \n$\"$中a' '$\\#\n \\\\ `' '🙂\\#$🙂#$;'",
    ),
    ["`;\\\"'", "🙂\\", "\" \n$\"$中a", "$\\#\n \\\\ `", "🙂\\#$🙂#$;"],
  )
}

///|
test "shlex quote oracle 143" {
  assert_eq(
    join_command([
      " 中\\\\$`\"🙂", "\n ", " a中", "a\\", "#;\\a\n中", "`", "\n \n \" $中",
    ]),
    "' 中\\\\$`\"🙂' '\n ' ' a中' 'a\\' '#;\\a\n中' '`' '\n \n \" $中'",
  )
  assert_eq(
    split_command(
      "' 中\\\\$`\"🙂' '\n ' ' a中' 'a\\' '#;\\a\n中' '`' '\n \n \" $中'",
    ),
    [
      " 中\\\\$`\"🙂", "\n ", " a中", "a\\", "#;\\a\n中", "`", "\n \n \" $中",
    ],
  )
}

///|
test "shlex quote oracle 144" {
  assert_eq(
    join_command(["\";\n'\\\\ \"\\", ";`#\"\na"]),
    "'\";\n'\"'\"'\\\\ \"\\' ';`#\"\na'",
  )
  assert_eq(split_command("'\";\n'\"'\"'\\\\ \"\\' ';`#\"\na'"), [
    "\";\n'\\\\ \"\\", ";`#\"\na",
  ])
}

///|
test "shlex quote oracle 145" {
  assert_eq(
    join_command(["a'#\\\"🙂\"", "#\\;\n\"", "'#🙂\\"]),
    "'a'\"'\"'#\\\"🙂\"' '#\\;\n\"' ''\"'\"'#🙂\\'",
  )
  assert_eq(
    split_command("'a'\"'\"'#\\\"🙂\"' '#\\;\n\"' ''\"'\"'#🙂\\'"),
    ["a'#\\\"🙂\"", "#\\;\n\"", "'#🙂\\"],
  )
}

///|
test "shlex quote oracle 146" {
  assert_eq(
    join_command(["'\";中#a$", "\\\n\"\"", "   $$\"\"", "🙂$'#;"]),
    "''\"'\"'\";中#a$' '\\\n\"\"' '   $$\"\"' '🙂$'\"'\"'#;'",
  )
  assert_eq(
    split_command("''\"'\"'\";中#a$' '\\\n\"\"' '   $$\"\"' '🙂$'\"'\"'#;'"),
    ["'\";中#a$", "\\\n\"\"", "   $$\"\"", "🙂$'#;"],
  )
}

///|
test "shlex quote oracle 147" {
  assert_eq(
    join_command([";$\"中\n中", " ;`' \"#\\🙂", "`;", "中\\"]),
    "';$\"中\n中' ' ;`'\"'\"' \"#\\🙂' '`;' '中\\'",
  )
  assert_eq(
    split_command("';$\"中\n中' ' ;`'\"'\"' \"#\\🙂' '`;' '中\\'"),
    [";$\"中\n中", " ;`' \"#\\🙂", "`;", "中\\"],
  )
}

///|
test "shlex quote oracle 148" {
  assert_eq(
    join_command([
      "\\中\\;#\";", "#\n", ";$🙂\" ", "", "`\"中'\n", "\";'中\n;\n$'",
    ]),
    "'\\中\\;#\";' '#\n' ';$🙂\" ' '' '`\"中'\"'\"'\n' '\";'\"'\"'中\n;\n$'\"'\"''",
  )
  assert_eq(
    split_command(
      "'\\中\\;#\";' '#\n' ';$🙂\" ' '' '`\"中'\"'\"'\n' '\";'\"'\"'中\n;\n$'\"'\"''",
    ),
    ["\\中\\;#\";", "#\n", ";$🙂\" ", "", "`\"中'\n", "\";'中\n;\n$'"],
  )
}

///|
test "shlex quote oracle 149" {
  assert_eq(
    join_command(["`'#", "\n中\\a`$", "", "\"🙂a"]),
    "'`'\"'\"'#' '\n中\\a`$' '' '\"🙂a'",
  )
  assert_eq(split_command("'`'\"'\"'#' '\n中\\a`$' '' '\"🙂a'"), [
    "`'#", "\n中\\a`$", "", "\"🙂a",
  ])
}

///|
test "shlex quote oracle 150" {
  assert_eq(
    join_command([
      "🙂中\" 中a🙂;\\", "中#🙂", "🙂中$", "", "\\\\ \\;a`🙂", "\\$\\a\"\\\"$🙂",
      "\n;\"#\\\\\\",
    ]),
    "'🙂中\" 中a🙂;\\' '中#🙂' '🙂中$' '' '\\\\ \\;a`🙂' '\\$\\a\"\\\"$🙂' '\n;\"#\\\\\\'",
  )
  assert_eq(
    split_command(
      "'🙂中\" 中a🙂;\\' '中#🙂' '🙂中$' '' '\\\\ \\;a`🙂' '\\$\\a\"\\\"$🙂' '\n;\"#\\\\\\'",
    ),
    [
      "🙂中\" 中a🙂;\\", "中#🙂", "🙂中$", "", "\\\\ \\;a`🙂", "\\$\\a\"\\\"$🙂",
      "\n;\"#\\\\\\",
    ],
  )
}

///|
test "shlex quote oracle 151" {
  assert_eq(
    join_command(["中`;🙂``\"🙂#", "\n\\中\\", "$$ "]),
    "'中`;🙂``\"🙂#' '\n\\中\\' '$$ '",
  )
  assert_eq(split_command("'中`;🙂``\"🙂#' '\n\\中\\' '$$ '"), [
    "中`;🙂``\"🙂#", "\n\\中\\", "$$ ",
  ])
}

///|
test "shlex quote oracle 152" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 153" {
  assert_eq(
    join_command(["中 \"", "#'##", "a$"]),
    "'中 \"' '#'\"'\"'##' 'a$'",
  )
  assert_eq(split_command("'中 \"' '#'\"'\"'##' 'a$'"), [
    "中 \"", "#'##", "a$",
  ])
}

///|
test "shlex quote oracle 154" {
  assert_eq(
    join_command([
      ";`a\\;' \\", "\"\\; ;\\`\"", "'🙂", "\n", "中aa", "", "'$'a",
    ]),
    "';`a\\;'\"'\"' \\' '\"\\; ;\\`\"' ''\"'\"'🙂' '\n' '中aa' '' ''\"'\"'$'\"'\"'a'",
  )
  assert_eq(
    split_command(
      "';`a\\;'\"'\"' \\' '\"\\; ;\\`\"' ''\"'\"'🙂' '\n' '中aa' '' ''\"'\"'$'\"'\"'a'",
    ),
    [";`a\\;' \\", "\"\\; ;\\`\"", "'🙂", "\n", "中aa", "", "'$'a"],
  )
}

///|
test "shlex quote oracle 155" {
  assert_eq(
    join_command([
      "#\\\"`", "", "🙂 \"\"\\;", "", "中中\\", "\"\\\n$'\n🙂;\\", "$;'",
    ]),
    "'#\\\"`' '' '🙂 \"\"\\;' '' '中中\\' '\"\\\n$'\"'\"'\n🙂;\\' '$;'\"'\"''",
  )
  assert_eq(
    split_command(
      "'#\\\"`' '' '🙂 \"\"\\;' '' '中中\\' '\"\\\n$'\"'\"'\n🙂;\\' '$;'\"'\"''",
    ),
    ["#\\\"`", "", "🙂 \"\"\\;", "", "中中\\", "\"\\\n$'\n🙂;\\", "$;'"],
  )
}

///|
test "shlex quote oracle 156" {
  assert_eq(join_command(["🙂", "中\\`$`"]), "'🙂' '中\\`$`'")
  assert_eq(split_command("'🙂' '中\\`$`'"), ["🙂", "中\\`$`"])
}

///|
test "shlex quote oracle 157" {
  assert_eq(join_command(["$#中"]), "'$#中'")
  assert_eq(split_command("'$#中'"), ["$#中"])
}

///|
test "shlex quote oracle 158" {
  assert_eq(
    join_command(["", "`; 中\\ '#\n", "\n "]),
    "'' '`; 中\\ '\"'\"'#\n' '\n '",
  )
  assert_eq(split_command("'' '`; 中\\ '\"'\"'#\n' '\n '"), [
    "", "`; 中\\ '#\n", "\n ",
  ])
}

///|
test "shlex quote oracle 159" {
  assert_eq(
    join_command(["$", "", "\n\\中\\\\ ", "$ a\\\n\\\n", "中"]),
    "'$' '' '\n\\中\\\\ ' '$ a\\\n\\\n' '中'",
  )
  assert_eq(split_command("'$' '' '\n\\中\\\\ ' '$ a\\\n\\\n' '中'"), [
    "$", "", "\n\\中\\\\ ", "$ a\\\n\\\n", "中",
  ])
}

///|
test "shlex quote oracle 160" {
  assert_eq(
    join_command(["", "#$中🙂 #` ", "'", " \n\"'"]),
    "'' '#$中🙂 #` ' ''\"'\"'' ' \n\"'\"'\"''",
  )
  assert_eq(split_command("'' '#$中🙂 #` ' ''\"'\"'' ' \n\"'\"'\"''"), [
    "", "#$中🙂 #` ", "'", " \n\"'",
  ])
}

///|
test "shlex quote oracle 161" {
  assert_eq(
    join_command(["a", "", ";", "🙂# \\`\"\"", "#🙂\n\n;'", "# a\n中\""]),
    "a '' ';' '🙂# \\`\"\"' '#🙂\n\n;'\"'\"'' '# a\n中\"'",
  )
  assert_eq(
    split_command("a '' ';' '🙂# \\`\"\"' '#🙂\n\n;'\"'\"'' '# a\n中\"'"),
    ["a", "", ";", "🙂# \\`\"\"", "#🙂\n\n;'", "# a\n中\""],
  )
}

///|
test "shlex quote oracle 162" {
  assert_eq(
    join_command([
      "\n中", "中 ;a", "a$$``#\" ", " a", "\"🙂", "'$ \n🙂\n中",
    ]),
    "'\n中' '中 ;a' 'a$$``#\" ' ' a' '\"🙂' ''\"'\"'$ \n🙂\n中'",
  )
  assert_eq(
    split_command(
      "'\n中' '中 ;a' 'a$$``#\" ' ' a' '\"🙂' ''\"'\"'$ \n🙂\n中'",
    ),
    ["\n中", "中 ;a", "a$$``#\" ", " a", "\"🙂", "'$ \n🙂\n中"],
  )
}

///|
test "shlex quote oracle 163" {
  assert_eq(
    join_command(["$中\n\"'", "$$'#中中\\\n", ";;\"$a 'a🙂", "\n#中\n"]),
    "'$中\n\"'\"'\"'' '$$'\"'\"'#中中\\\n' ';;\"$a '\"'\"'a🙂' '\n#中\n'",
  )
  assert_eq(
    split_command(
      "'$中\n\"'\"'\"'' '$$'\"'\"'#中中\\\n' ';;\"$a '\"'\"'a🙂' '\n#中\n'",
    ),
    ["$中\n\"'", "$$'#中中\\\n", ";;\"$a 'a🙂", "\n#中\n"],
  )
}

///|
test "shlex quote oracle 164" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 165" {
  assert_eq(join_command(["$;a ", "\n#` $a", "\n"]), "'$;a ' '\n#` $a' '\n'")
  assert_eq(split_command("'$;a ' '\n#` $a' '\n'"), ["$;a ", "\n#` $a", "\n"])
}

///|
test "shlex quote oracle 166" {
  assert_eq(
    join_command(["'#a", "", "🙂 \"🙂;"]),
    "''\"'\"'#a' '' '🙂 \"🙂;'",
  )
  assert_eq(split_command("''\"'\"'#a' '' '🙂 \"🙂;'"), [
    "'#a", "", "🙂 \"🙂;",
  ])
}

///|
test "shlex quote oracle 167" {
  assert_eq(
    join_command([
      "\n🙂;🙂中`", "$🙂\n\"`\n```", "\";中\\'", "\n ''# \"`", "'#a';🙂 ",
    ]),
    "'\n🙂;🙂中`' '$🙂\n\"`\n```' '\";中\\'\"'\"'' '\n '\"'\"''\"'\"'# \"`' ''\"'\"'#a'\"'\"';🙂 '",
  )
  assert_eq(
    split_command(
      "'\n🙂;🙂中`' '$🙂\n\"`\n```' '\";中\\'\"'\"'' '\n '\"'\"''\"'\"'# \"`' ''\"'\"'#a'\"'\"';🙂 '",
    ),
    [
      "\n🙂;🙂中`", "$🙂\n\"`\n```", "\";中\\'", "\n ''# \"`", "'#a';🙂 ",
    ],
  )
}

///|
test "shlex quote oracle 168" {
  assert_eq(
    join_command([
      "` \\\"\"", "$;a中 🙂'\\", "\"\\🙂中'", "", "", "\"a$ \n; `'",
    ]),
    "'` \\\"\"' '$;a中 🙂'\"'\"'\\' '\"\\🙂中'\"'\"'' '' '' '\"a$ \n; `'\"'\"''",
  )
  assert_eq(
    split_command(
      "'` \\\"\"' '$;a中 🙂'\"'\"'\\' '\"\\🙂中'\"'\"'' '' '' '\"a$ \n; `'\"'\"''",
    ),
    ["` \\\"\"", "$;a中 🙂'\\", "\"\\🙂中'", "", "", "\"a$ \n; `'"],
  )
}

///|
test "shlex quote oracle 169" {
  assert_eq(
    join_command(["a🙂;#🙂\"$", "$", "\\a\"$", "##"]),
    "'a🙂;#🙂\"$' '$' '\\a\"$' '##'",
  )
  assert_eq(split_command("'a🙂;#🙂\"$' '$' '\\a\"$' '##'"), [
    "a🙂;#🙂\"$", "$", "\\a\"$", "##",
  ])
}

///|
test "shlex quote oracle 170" {
  assert_eq(
    join_command([" `🙂'''#", "🙂\"", "\n\\#``🙂中🙂"]),
    "' `🙂'\"'\"''\"'\"''\"'\"'#' '🙂\"' '\n\\#``🙂中🙂'",
  )
  assert_eq(
    split_command(
      "' `🙂'\"'\"''\"'\"''\"'\"'#' '🙂\"' '\n\\#``🙂中🙂'",
    ),
    [" `🙂'''#", "🙂\"", "\n\\#``🙂中🙂"],
  )
}

///|
test "shlex quote oracle 171" {
  assert_eq(join_command(["a\n中;a\n;"]), "'a\n中;a\n;'")
  assert_eq(split_command("'a\n中;a\n;'"), ["a\n中;a\n;"])
}

///|
test "shlex quote oracle 172" {
  assert_eq(join_command(["🙂"]), "'🙂'")
  assert_eq(split_command("'🙂'"), ["🙂"])
}

///|
test "shlex quote oracle 173" {
  assert_eq(
    join_command([
      "\n\\中🙂\\a", "", "中\n中中🙂'$", " ;;'", " 中\"", "\\\\a🙂中\\中",
      "a",
    ]),
    "'\n\\中🙂\\a' '' '中\n中中🙂'\"'\"'$' ' ;;'\"'\"'' ' 中\"' '\\\\a🙂中\\中' a",
  )
  assert_eq(
    split_command(
      "'\n\\中🙂\\a' '' '中\n中中🙂'\"'\"'$' ' ;;'\"'\"'' ' 中\"' '\\\\a🙂中\\中' a",
    ),
    [
      "\n\\中🙂\\a", "", "中\n中中🙂'$", " ;;'", " 中\"", "\\\\a🙂中\\中",
      "a",
    ],
  )
}

///|
test "shlex quote oracle 174" {
  assert_eq(join_command(["'a\"`"]), "''\"'\"'a\"`'")
  assert_eq(split_command("''\"'\"'a\"`'"), ["'a\"`"])
}

///|
test "shlex quote oracle 175" {
  assert_eq(
    join_command([" 🙂", "\n", "`\n\"a\"a", "a'$🙂", " ", "中"]),
    "' 🙂' '\n' '`\n\"a\"a' 'a'\"'\"'$🙂' ' ' '中'",
  )
  assert_eq(
    split_command("' 🙂' '\n' '`\n\"a\"a' 'a'\"'\"'$🙂' ' ' '中'"),
    [" 🙂", "\n", "`\n\"a\"a", "a'$🙂", " ", "中"],
  )
}

///|
test "shlex quote oracle 176" {
  assert_eq(
    join_command(["\"\n中;🙂🙂\\\"中"]),
    "'\"\n中;🙂🙂\\\"中'",
  )
  assert_eq(split_command("'\"\n中;🙂🙂\\\"中'"), [
    "\"\n中;🙂🙂\\\"中",
  ])
}

///|
test "shlex quote oracle 177" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 178" {
  assert_eq(
    join_command([
      "", "a", "$$`", "##`;$\n;🙂中", "🙂\n\\", "\\;`#\\\\", "🙂aa ",
    ]),
    "'' a '$$`' '##`;$\n;🙂中' '🙂\n\\' '\\;`#\\\\' '🙂aa '",
  )
  assert_eq(
    split_command(
      "'' a '$$`' '##`;$\n;🙂中' '🙂\n\\' '\\;`#\\\\' '🙂aa '",
    ),
    ["", "a", "$$`", "##`;$\n;🙂中", "🙂\n\\", "\\;`#\\\\", "🙂aa "],
  )
}

///|
test "shlex quote oracle 179" {
  assert_eq(
    join_command(["'`'#", "\n", ";\\$$'\\"]),
    "''\"'\"'`'\"'\"'#' '\n' ';\\$$'\"'\"'\\'",
  )
  assert_eq(split_command("''\"'\"'`'\"'\"'#' '\n' ';\\$$'\"'\"'\\'"), [
    "'`'#", "\n", ";\\$$'\\",
  ])
}

///|
test "shlex quote oracle 180" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 181" {
  assert_eq(
    join_command(["\\", "🙂🙂中;\"\\\\", "", "a $\""]),
    "'\\' '🙂🙂中;\"\\\\' '' 'a $\"'",
  )
  assert_eq(split_command("'\\' '🙂🙂中;\"\\\\' '' 'a $\"'"), [
    "\\", "🙂🙂中;\"\\\\", "", "a $\"",
  ])
}

///|
test "shlex quote oracle 182" {
  assert_eq(join_command(["'🙂"]), "''\"'\"'🙂'")
  assert_eq(split_command("''\"'\"'🙂'"), ["'🙂"])
}

///|
test "shlex quote oracle 183" {
  assert_eq(join_command(["中\\ a", "\n#a\\\\ \\"]), "'中\\ a' '\n#a\\\\ \\'")
  assert_eq(split_command("'中\\ a' '\n#a\\\\ \\'"), ["中\\ a", "\n#a\\\\ \\"])
}

///|
test "shlex quote oracle 184" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 185" {
  assert_eq(join_command(["$`中"]), "'$`中'")
  assert_eq(split_command("'$`中'"), ["$`中"])
}

///|
test "shlex quote oracle 186" {
  assert_eq(
    join_command([" \"$🙂中a", ";\n", "#\n\n", ""]),
    "' \"$🙂中a' ';\n' '#\n\n' ''",
  )
  assert_eq(split_command("' \"$🙂中a' ';\n' '#\n\n' ''"), [
    " \"$🙂中a", ";\n", "#\n\n", "",
  ])
}

///|
test "shlex quote oracle 187" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 188" {
  assert_eq(
    join_command([
      "\\🙂", "", "`;中`';", "中`  'a\"中中", "$中", "\n\n\"", "\\a'`🙂\n\\",
    ]),
    "'\\🙂' '' '`;中`'\"'\"';' '中`  '\"'\"'a\"中中' '$中' '\n\n\"' '\\a'\"'\"'`🙂\n\\'",
  )
  assert_eq(
    split_command(
      "'\\🙂' '' '`;中`'\"'\"';' '中`  '\"'\"'a\"中中' '$中' '\n\n\"' '\\a'\"'\"'`🙂\n\\'",
    ),
    [
      "\\🙂", "", "`;中`';", "中`  'a\"中中", "$中", "\n\n\"", "\\a'`🙂\n\\",
    ],
  )
}

///|
test "shlex quote oracle 189" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 190" {
  assert_eq(
    join_command([
      "`\"\"'a\n\\\"", " ' 'a🙂", "\n\\$;🙂\\", "中\" $;中#\\",
    ]),
    "'`\"\"'\"'\"'a\n\\\"' ' '\"'\"' '\"'\"'a🙂' '\n\\$;🙂\\' '中\" $;中#\\'",
  )
  assert_eq(
    split_command(
      "'`\"\"'\"'\"'a\n\\\"' ' '\"'\"' '\"'\"'a🙂' '\n\\$;🙂\\' '中\" $;中#\\'",
    ),
    ["`\"\"'a\n\\\"", " ' 'a🙂", "\n\\$;🙂\\", "中\" $;中#\\"],
  )
}

///|
test "shlex quote oracle 191" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 192" {
  assert_eq(join_command(["$🙂\"$"]), "'$🙂\"$'")
  assert_eq(split_command("'$🙂\"$'"), ["$🙂\"$"])
}

///|
test "shlex quote oracle 193" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 194" {
  assert_eq(
    join_command(["#", " #\\中;' \\", "``'", "'\\ $\"", "$a", "中"]),
    "'#' ' #\\中;'\"'\"' \\' '``'\"'\"'' ''\"'\"'\\ $\"' '$a' '中'",
  )
  assert_eq(
    split_command(
      "'#' ' #\\中;'\"'\"' \\' '``'\"'\"'' ''\"'\"'\\ $\"' '$a' '中'",
    ),
    ["#", " #\\中;' \\", "``'", "'\\ $\"", "$a", "中"],
  )
}

///|
test "shlex quote oracle 195" {
  assert_eq(
    join_command([
      "#", "; #🙂'\n ", "", "🙂#;\n;", "\"$;;##中$\\", " 🙂 ",
    ]),
    "'#' '; #🙂'\"'\"'\n ' '' '🙂#;\n;' '\"$;;##中$\\' ' 🙂 '",
  )
  assert_eq(
    split_command(
      "'#' '; #🙂'\"'\"'\n ' '' '🙂#;\n;' '\"$;;##中$\\' ' 🙂 '",
    ),
    ["#", "; #🙂'\n ", "", "🙂#;\n;", "\"$;;##中$\\", " 🙂 "],
  )
}

///|
test "shlex quote oracle 196" {
  assert_eq(
    join_command([" ;$#a🙂", "$\n🙂", "中中"]),
    "' ;$#a🙂' '$\n🙂' '中中'",
  )
  assert_eq(split_command("' ;$#a🙂' '$\n🙂' '中中'"), [
    " ;$#a🙂", "$\n🙂", "中中",
  ])
}

///|
test "shlex quote oracle 197" {
  assert_eq(
    join_command(["\n;\\'`\\", "$", "a", " a 中\"", "🙂🙂"]),
    "'\n;\\'\"'\"'`\\' '$' a ' a 中\"' '🙂🙂'",
  )
  assert_eq(split_command("'\n;\\'\"'\"'`\\' '$' a ' a 中\"' '🙂🙂'"), [
    "\n;\\'`\\", "$", "a", " a 中\"", "🙂🙂",
  ])
}

///|
test "shlex quote oracle 198" {
  assert_eq(
    join_command(["\n 🙂\n", ";", "#$", "`a\\'\\$", "中'", "中a ;\\\n'"]),
    "'\n 🙂\n' ';' '#$' '`a\\'\"'\"'\\$' '中'\"'\"'' '中a ;\\\n'\"'\"''",
  )
  assert_eq(
    split_command(
      "'\n 🙂\n' ';' '#$' '`a\\'\"'\"'\\$' '中'\"'\"'' '中a ;\\\n'\"'\"''",
    ),
    ["\n 🙂\n", ";", "#$", "`a\\'\\$", "中'", "中a ;\\\n'"],
  )
}

///|
test "shlex quote oracle 199" {
  assert_eq(join_command(["$a'a `"]), "'$a'\"'\"'a `'")
  assert_eq(split_command("'$a'\"'\"'a `'"), ["$a'a `"])
}

///|
test "shlex quote oracle 200" {
  assert_eq(
    join_command(["中`\\\"\n ;' ", "", "\" `\"\\", "a"]),
    "'中`\\\"\n ;'\"'\"' ' '' '\" `\"\\' a",
  )
  assert_eq(split_command("'中`\\\"\n ;'\"'\"' ' '' '\" `\"\\' a"), [
    "中`\\\"\n ;' ", "", "\" `\"\\", "a",
  ])
}

///|
test "shlex quote oracle 201" {
  assert_eq(
    join_command([
      "#$'a#a", ";'$🙂🙂🙂#", "#\n\"#\n`", "#a;\n`a", "\\'`", "", "",
    ]),
    "'#$'\"'\"'a#a' ';'\"'\"'$🙂🙂🙂#' '#\n\"#\n`' '#a;\n`a' '\\'\"'\"'`' '' ''",
  )
  assert_eq(
    split_command(
      "'#$'\"'\"'a#a' ';'\"'\"'$🙂🙂🙂#' '#\n\"#\n`' '#a;\n`a' '\\'\"'\"'`' '' ''",
    ),
    ["#$'a#a", ";'$🙂🙂🙂#", "#\n\"#\n`", "#a;\n`a", "\\'`", "", ""],
  )
}

///|
test "shlex quote oracle 202" {
  assert_eq(join_command([""]), "''")
  assert_eq(split_command("''"), [""])
}

///|
test "shlex quote oracle 203" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 204" {
  assert_eq(join_command(["\n`a🙂\""]), "'\n`a🙂\"'")
  assert_eq(split_command("'\n`a🙂\"'"), ["\n`a🙂\""])
}

///|
test "shlex quote oracle 205" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 206" {
  assert_eq(
    join_command(["; 中`;;", "", "\n🙂🙂🙂a\\", "\\"]),
    "'; 中`;;' '' '\n🙂🙂🙂a\\' '\\'",
  )
  assert_eq(split_command("'; 中`;;' '' '\n🙂🙂🙂a\\' '\\'"), [
    "; 中`;;", "", "\n🙂🙂🙂a\\", "\\",
  ])
}

///|
test "shlex quote oracle 207" {
  assert_eq(
    join_command(["`", "\n`\n", "a`", "\n$;a' $\n`", "$🙂;"]),
    "'`' '\n`\n' 'a`' '\n$;a'\"'\"' $\n`' '$🙂;'",
  )
  assert_eq(split_command("'`' '\n`\n' 'a`' '\n$;a'\"'\"' $\n`' '$🙂;'"), [
    "`", "\n`\n", "a`", "\n$;a' $\n`", "$🙂;",
  ])
}

///|
test "shlex quote oracle 208" {
  assert_eq(
    join_command(["$$", "🙂#\"", " 'a\n中\"", "$;\"\n\n\\🙂\\ "]),
    "'$$' '🙂#\"' ' '\"'\"'a\n中\"' '$;\"\n\n\\🙂\\ '",
  )
  assert_eq(
    split_command("'$$' '🙂#\"' ' '\"'\"'a\n中\"' '$;\"\n\n\\🙂\\ '"),
    ["$$", "🙂#\"", " 'a\n中\"", "$;\"\n\n\\🙂\\ "],
  )
}

///|
test "shlex quote oracle 209" {
  assert_eq(
    join_command([
      "", "🙂\"中$", "\n\"$`';\" \"", "\\`", "'", "#中`\n\n#;'", " ",
    ]),
    "'' '🙂\"中$' '\n\"$`'\"'\"';\" \"' '\\`' ''\"'\"'' '#中`\n\n#;'\"'\"'' ' '",
  )
  assert_eq(
    split_command(
      "'' '🙂\"中$' '\n\"$`'\"'\"';\" \"' '\\`' ''\"'\"'' '#中`\n\n#;'\"'\"'' ' '",
    ),
    ["", "🙂\"中$", "\n\"$`';\" \"", "\\`", "'", "#中`\n\n#;'", " "],
  )
}

///|
test "shlex quote oracle 210" {
  assert_eq(join_command(["#'\" \\\n$"]), "'#'\"'\"'\" \\\n$'")
  assert_eq(split_command("'#'\"'\"'\" \\\n$'"), ["#'\" \\\n$"])
}

///|
test "shlex quote oracle 211" {
  assert_eq(
    join_command([
      "中a`$\n", "\"'a'中$a", "\"\" ; \n\n", "\\;中$#", "'$`\"\\",
    ]),
    "'中a`$\n' '\"'\"'\"'a'\"'\"'中$a' '\"\" ; \n\n' '\\;中$#' ''\"'\"'$`\"\\'",
  )
  assert_eq(
    split_command(
      "'中a`$\n' '\"'\"'\"'a'\"'\"'中$a' '\"\" ; \n\n' '\\;中$#' ''\"'\"'$`\"\\'",
    ),
    ["中a`$\n", "\"'a'中$a", "\"\" ; \n\n", "\\;中$#", "'$`\"\\"],
  )
}

///|
test "shlex quote oracle 212" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 213" {
  assert_eq(
    join_command([
      "`\\\\", "\na\n🙂\"'#`#", "$``", "`;;\n$", "中\\🙂🙂\"\"a", "`\na中 #",
    ]),
    "'`\\\\' '\na\n🙂\"'\"'\"'#`#' '$``' '`;;\n$' '中\\🙂🙂\"\"a' '`\na中 #'",
  )
  assert_eq(
    split_command(
      "'`\\\\' '\na\n🙂\"'\"'\"'#`#' '$``' '`;;\n$' '中\\🙂🙂\"\"a' '`\na中 #'",
    ),
    [
      "`\\\\", "\na\n🙂\"'#`#", "$``", "`;;\n$", "中\\🙂🙂\"\"a", "`\na中 #",
    ],
  )
}

///|
test "shlex quote oracle 214" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 215" {
  assert_eq(
    join_command(["`$\\\n$🙂$中", "\n$🙂'", "$;中 "]),
    "'`$\\\n$🙂$中' '\n$🙂'\"'\"'' '$;中 '",
  )
  assert_eq(split_command("'`$\\\n$🙂$中' '\n$🙂'\"'\"'' '$;中 '"), [
    "`$\\\n$🙂$中", "\n$🙂'", "$;中 ",
  ])
}

///|
test "shlex quote oracle 216" {
  assert_eq(
    join_command(["';$;🙂;", "\n中\\", "\" aa"]),
    "''\"'\"';$;🙂;' '\n中\\' '\" aa'",
  )
  assert_eq(split_command("''\"'\"';$;🙂;' '\n中\\' '\" aa'"), [
    "';$;🙂;", "\n中\\", "\" aa",
  ])
}

///|
test "shlex quote oracle 217" {
  assert_eq(
    join_command([
      "🙂'a'", "🙂;`\n#中`\n", "🙂' $🙂$a", "", "#\"`aa;`\\", "#\\", "`",
    ]),
    "'🙂'\"'\"'a'\"'\"'' '🙂;`\n#中`\n' '🙂'\"'\"' $🙂$a' '' '#\"`aa;`\\' '#\\' '`'",
  )
  assert_eq(
    split_command(
      "'🙂'\"'\"'a'\"'\"'' '🙂;`\n#中`\n' '🙂'\"'\"' $🙂$a' '' '#\"`aa;`\\' '#\\' '`'",
    ),
    [
      "🙂'a'", "🙂;`\n#中`\n", "🙂' $🙂$a", "", "#\"`aa;`\\", "#\\", "`",
    ],
  )
}

///|
test "shlex quote oracle 218" {
  assert_eq(
    join_command([
      "🙂'$'", "#中\"#🙂🙂`\n", "🙂🙂\\a\n#", "#\"''🙂$", "\"\\`\n ;$\"",
      " \\#`\\🙂$中#",
    ]),
    "'🙂'\"'\"'$'\"'\"'' '#中\"#🙂🙂`\n' '🙂🙂\\a\n#' '#\"'\"'\"''\"'\"'🙂$' '\"\\`\n ;$\"' ' \\#`\\🙂$中#'",
  )
  assert_eq(
    split_command(
      "'🙂'\"'\"'$'\"'\"'' '#中\"#🙂🙂`\n' '🙂🙂\\a\n#' '#\"'\"'\"''\"'\"'🙂$' '\"\\`\n ;$\"' ' \\#`\\🙂$中#'",
    ),
    [
      "🙂'$'", "#中\"#🙂🙂`\n", "🙂🙂\\a\n#", "#\"''🙂$", "\"\\`\n ;$\"",
      " \\#`\\🙂$中#",
    ],
  )
}

///|
test "shlex quote oracle 219" {
  assert_eq(
    join_command([
      "", " 🙂中;#", "\"'\n ", " \"", "#\"aa ", "🙂\";# `", "'  #",
    ]),
    "'' ' 🙂中;#' '\"'\"'\"'\n ' ' \"' '#\"aa ' '🙂\";# `' ''\"'\"'  #'",
  )
  assert_eq(
    split_command(
      "'' ' 🙂中;#' '\"'\"'\"'\n ' ' \"' '#\"aa ' '🙂\";# `' ''\"'\"'  #'",
    ),
    ["", " 🙂中;#", "\"'\n ", " \"", "#\"aa ", "🙂\";# `", "'  #"],
  )
}

///|
test "shlex quote oracle 220" {
  assert_eq(
    join_command([
      "  a", "a中", "$$$;$\"`'\"", "中`;中;\"#\n中", "a\n'\\\n\"$", "`a\\", "🙂$",
    ]),
    "'  a' 'a中' '$$$;$\"`'\"'\"'\"' '中`;中;\"#\n中' 'a\n'\"'\"'\\\n\"$' '`a\\' '🙂$'",
  )
  assert_eq(
    split_command(
      "'  a' 'a中' '$$$;$\"`'\"'\"'\"' '中`;中;\"#\n中' 'a\n'\"'\"'\\\n\"$' '`a\\' '🙂$'",
    ),
    [
      "  a", "a中", "$$$;$\"`'\"", "中`;中;\"#\n中", "a\n'\\\n\"$", "`a\\", "🙂$",
    ],
  )
}

///|
test "shlex quote oracle 221" {
  assert_eq(join_command(["\";🙂'"]), "'\";🙂'\"'\"''")
  assert_eq(split_command("'\";🙂'\"'\"''"), ["\";🙂'"])
}

///|
test "shlex quote oracle 222" {
  assert_eq(
    join_command([" 🙂 a\"'a", "\\", "'", "", "$\"\n🙂\\$\n", ";a"]),
    "' 🙂 a\"'\"'\"'a' '\\' ''\"'\"'' '' '$\"\n🙂\\$\n' ';a'",
  )
  assert_eq(
    split_command("' 🙂 a\"'\"'\"'a' '\\' ''\"'\"'' '' '$\"\n🙂\\$\n' ';a'"),
    [" 🙂 a\"'a", "\\", "'", "", "$\"\n🙂\\$\n", ";a"],
  )
}

///|
test "shlex quote oracle 223" {
  assert_eq(join_command([" $中"]), "' $中'")
  assert_eq(split_command("' $中'"), [" $中"])
}

///|
test "shlex quote oracle 224" {
  assert_eq(
    join_command(["a'\"`#\n\\;#", "🙂中中\\🙂 \\", "`'", "中#"]),
    "'a'\"'\"'\"`#\n\\;#' '🙂中中\\🙂 \\' '`'\"'\"'' '中#'",
  )
  assert_eq(
    split_command(
      "'a'\"'\"'\"`#\n\\;#' '🙂中中\\🙂 \\' '`'\"'\"'' '中#'",
    ),
    ["a'\"`#\n\\;#", "🙂中中\\🙂 \\", "`'", "中#"],
  )
}

///|
test "shlex quote oracle 225" {
  assert_eq(
    join_command(["`a🙂'中\n 中", " ;$`"]),
    "'`a🙂'\"'\"'中\n 中' ' ;$`'",
  )
  assert_eq(split_command("'`a🙂'\"'\"'中\n 中' ' ;$`'"), [
    "`a🙂'中\n 中", " ;$`",
  ])
}

///|
test "shlex quote oracle 226" {
  assert_eq(
    join_command([
      "; a\";a🙂#`", "🙂;;##`", "'\\🙂#\\\\\n", "#`", "';\\ ", "`", "`\\;'🙂\"",
    ]),
    "'; a\";a🙂#`' '🙂;;##`' ''\"'\"'\\🙂#\\\\\n' '#`' ''\"'\"';\\ ' '`' '`\\;'\"'\"'🙂\"'",
  )
  assert_eq(
    split_command(
      "'; a\";a🙂#`' '🙂;;##`' ''\"'\"'\\🙂#\\\\\n' '#`' ''\"'\"';\\ ' '`' '`\\;'\"'\"'🙂\"'",
    ),
    [
      "; a\";a🙂#`", "🙂;;##`", "'\\🙂#\\\\\n", "#`", "';\\ ", "`", "`\\;'🙂\"",
    ],
  )
}

///|
test "shlex quote oracle 227" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 228" {
  assert_eq(
    join_command(["#;中$$`; ;", "a中`🙂", "';$$a"]),
    "'#;中$$`; ;' 'a中`🙂' ''\"'\"';$$a'",
  )
  assert_eq(split_command("'#;中$$`; ;' 'a中`🙂' ''\"'\"';$$a'"), [
    "#;中$$`; ;", "a中`🙂", "';$$a",
  ])
}

///|
test "shlex quote oracle 229" {
  assert_eq(
    join_command([
      "\"$\\\n`''", "a$\n", "a`中", "'  🙂\"\n🙂$;", ";''$\\'$", "#'`\n中;\\ ",
    ]),
    "'\"$\\\n`'\"'\"''\"'\"'' 'a$\n' 'a`中' ''\"'\"'  🙂\"\n🙂$;' ';'\"'\"''\"'\"'$\\'\"'\"'$' '#'\"'\"'`\n中;\\ '",
  )
  assert_eq(
    split_command(
      "'\"$\\\n`'\"'\"''\"'\"'' 'a$\n' 'a`中' ''\"'\"'  🙂\"\n🙂$;' ';'\"'\"''\"'\"'$\\'\"'\"'$' '#'\"'\"'`\n中;\\ '",
    ),
    [
      "\"$\\\n`''", "a$\n", "a`中", "'  🙂\"\n🙂$;", ";''$\\'$", "#'`\n中;\\ ",
    ],
  )
}

///|
test "shlex quote oracle 230" {
  assert_eq(join_command(["$`a;", "a"]), "'$`a;' a")
  assert_eq(split_command("'$`a;' a"), ["$`a;", "a"])
}

///|
test "shlex quote oracle 231" {
  assert_eq(
    join_command(["a'```", "\n\\$\\\n$`\\"]),
    "'a'\"'\"'```' '\n\\$\\\n$`\\'",
  )
  assert_eq(split_command("'a'\"'\"'```' '\n\\$\\\n$`\\'"), [
    "a'```", "\n\\$\\\n$`\\",
  ])
}

///|
test "shlex quote oracle 232" {
  assert_eq(join_command(["a", ""]), "a ''")
  assert_eq(split_command("a ''"), ["a", ""])
}

///|
test "shlex quote oracle 233" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 234" {
  assert_eq(join_command([";\"\"`\n\"\\\""]), "';\"\"`\n\"\\\"'")
  assert_eq(split_command("';\"\"`\n\"\\\"'"), [";\"\"`\n\"\\\""])
}

///|
test "shlex quote oracle 235" {
  assert_eq(join_command([" \n'\\\n中"]), "' \n'\"'\"'\\\n中'")
  assert_eq(split_command("' \n'\"'\"'\\\n中'"), [" \n'\\\n中"])
}

///|
test "shlex quote oracle 236" {
  assert_eq(
    join_command([
      "\\\\'", "\\🙂;#", "\n\"a", "\\\"中\\a$ ", "\\$;';", "🙂$aa;\"🙂", "`🙂\"\\a\n",
    ]),
    "'\\\\'\"'\"'' '\\🙂;#' '\n\"a' '\\\"中\\a$ ' '\\$;'\"'\"';' '🙂$aa;\"🙂' '`🙂\"\\a\n'",
  )
  assert_eq(
    split_command(
      "'\\\\'\"'\"'' '\\🙂;#' '\n\"a' '\\\"中\\a$ ' '\\$;'\"'\"';' '🙂$aa;\"🙂' '`🙂\"\\a\n'",
    ),
    [
      "\\\\'", "\\🙂;#", "\n\"a", "\\\"中\\a$ ", "\\$;';", "🙂$aa;\"🙂", "`🙂\"\\a\n",
    ],
  )
}

///|
test "shlex quote oracle 237" {
  assert_eq(join_command(["🙂`\\"]), "'🙂`\\'")
  assert_eq(split_command("'🙂`\\'"), ["🙂`\\"])
}

///|
test "shlex quote oracle 238" {
  assert_eq(
    join_command([
      "a", "a;`$a#`\"'", "", "", "$🙂$\n;\n ", "`'#$'\"a 中", "`\";\n'\n$$",
    ]),
    "a 'a;`$a#`\"'\"'\"'' '' '' '$🙂$\n;\n ' '`'\"'\"'#$'\"'\"'\"a 中' '`\";\n'\"'\"'\n$$'",
  )
  assert_eq(
    split_command(
      "a 'a;`$a#`\"'\"'\"'' '' '' '$🙂$\n;\n ' '`'\"'\"'#$'\"'\"'\"a 中' '`\";\n'\"'\"'\n$$'",
    ),
    ["a", "a;`$a#`\"'", "", "", "$🙂$\n;\n ", "`'#$'\"a 中", "`\";\n'\n$$"],
  )
}

///|
test "shlex quote oracle 239" {
  assert_eq(
    join_command([
      "🙂中;a", "#''`", " ;\n#`' 🙂#", "$ ``a;🙂'中", "\"$ a$", "`\\ $中",
    ]),
    "'🙂中;a' '#'\"'\"''\"'\"'`' ' ;\n#`'\"'\"' 🙂#' '$ ``a;🙂'\"'\"'中' '\"$ a$' '`\\ $中'",
  )
  assert_eq(
    split_command(
      "'🙂中;a' '#'\"'\"''\"'\"'`' ' ;\n#`'\"'\"' 🙂#' '$ ``a;🙂'\"'\"'中' '\"$ a$' '`\\ $中'",
    ),
    [
      "🙂中;a", "#''`", " ;\n#`' 🙂#", "$ ``a;🙂'中", "\"$ a$", "`\\ $中",
    ],
  )
}

///|
test "shlex quote oracle 240" {
  assert_eq(
    join_command(["🙂\n''#", "\";$\\", "\\##\n\\#$"]),
    "'🙂\n'\"'\"''\"'\"'#' '\";$\\' '\\##\n\\#$'",
  )
  assert_eq(split_command("'🙂\n'\"'\"''\"'\"'#' '\";$\\' '\\##\n\\#$'"), [
    "🙂\n''#", "\";$\\", "\\##\n\\#$",
  ])
}

///|
test "shlex quote oracle 241" {
  assert_eq(
    join_command(["", "`", "🙂 ` ' 中"]),
    "'' '`' '🙂 ` '\"'\"' 中'",
  )
  assert_eq(split_command("'' '`' '🙂 ` '\"'\"' 中'"), [
    "", "`", "🙂 ` ' 中",
  ])
}

///|
test "shlex quote oracle 242" {
  assert_eq(
    join_command([
      " \"", "$", "';🙂$\n\"", "#\n#", "``\"中'\n中", "\"\\\"中 `#`\"", ";a'",
    ]),
    "' \"' '$' ''\"'\"';🙂$\n\"' '#\n#' '``\"中'\"'\"'\n中' '\"\\\"中 `#`\"' ';a'\"'\"''",
  )
  assert_eq(
    split_command(
      "' \"' '$' ''\"'\"';🙂$\n\"' '#\n#' '``\"中'\"'\"'\n中' '\"\\\"中 `#`\"' ';a'\"'\"''",
    ),
    [
      " \"", "$", "';🙂$\n\"", "#\n#", "``\"中'\n中", "\"\\\"中 `#`\"", ";a'",
    ],
  )
}

///|
test "shlex quote oracle 243" {
  assert_eq(join_command(["\\ #中"]), "'\\ #中'")
  assert_eq(split_command("'\\ #中'"), ["\\ #中"])
}

///|
test "shlex quote oracle 244" {
  assert_eq(
    join_command(["\\ '\n", "\\'a a;\n"]),
    "'\\ '\"'\"'\n' '\\'\"'\"'a a;\n'",
  )
  assert_eq(split_command("'\\ '\"'\"'\n' '\\'\"'\"'a a;\n'"), [
    "\\ '\n", "\\'a a;\n",
  ])
}

///|
test "shlex quote oracle 245" {
  assert_eq(join_command([";\\🙂#a中"]), "';\\🙂#a中'")
  assert_eq(split_command("';\\🙂#a中'"), [";\\🙂#a中"])
}

///|
test "shlex quote oracle 246" {
  assert_eq(
    join_command(["\\", "$`", "", "##\"`🙂中;🙂🙂", "$#🙂\\"]),
    "'\\' '$`' '' '##\"`🙂中;🙂🙂' '$#🙂\\'",
  )
  assert_eq(split_command("'\\' '$`' '' '##\"`🙂中;🙂🙂' '$#🙂\\'"), [
    "\\", "$`", "", "##\"`🙂中;🙂🙂", "$#🙂\\",
  ])
}

///|
test "shlex quote oracle 247" {
  assert_eq(
    join_command(["🙂", "'🙂", "`\n'\n;\n;#"]),
    "'🙂' ''\"'\"'🙂' '`\n'\"'\"'\n;\n;#'",
  )
  assert_eq(split_command("'🙂' ''\"'\"'🙂' '`\n'\"'\"'\n;\n;#'"), [
    "🙂", "'🙂", "`\n'\n;\n;#",
  ])
}

///|
test "shlex quote oracle 248" {
  assert_eq(
    join_command(["\"'中中;", ";中a;\"`", "\"中a'\n "]),
    "'\"'\"'\"'中中;' ';中a;\"`' '\"中a'\"'\"'\n '",
  )
  assert_eq(
    split_command("'\"'\"'\"'中中;' ';中a;\"`' '\"中a'\"'\"'\n '"),
    ["\"'中中;", ";中a;\"`", "\"中a'\n "],
  )
}

///|
test "shlex quote oracle 249" {
  assert_eq(
    join_command([
      "中 中;", "#a ;;\"中$", "中 '中#\"中`🙂", "`\";", "a`\"\\$a;中#",
    ]),
    "'中 中;' '#a ;;\"中$' '中 '\"'\"'中#\"中`🙂' '`\";' 'a`\"\\$a;中#'",
  )
  assert_eq(
    split_command(
      "'中 中;' '#a ;;\"中$' '中 '\"'\"'中#\"中`🙂' '`\";' 'a`\"\\$a;中#'",
    ),
    ["中 中;", "#a ;;\"中$", "中 '中#\"中`🙂", "`\";", "a`\"\\$a;中#"],
  )
}

///|
test "shlex quote oracle 250" {
  assert_eq(join_command([]), "")
  assert_eq(split_command(""), [])
}

///|
test "shlex quote oracle 251" {
  assert_eq(
    join_command([
      " 中🙂'; \"", "$;中\n$\n🙂\\🙂", "'';;", "#\\#`$中", "$\"`", " `a",
      "",
    ]),
    "' 中🙂'\"'\"'; \"' '$;中\n$\n🙂\\🙂' ''\"'\"''\"'\"';;' '#\\#`$中' '$\"`' ' `a' ''",
  )
  assert_eq(
    split_command(
      "' 中🙂'\"'\"'; \"' '$;中\n$\n🙂\\🙂' ''\"'\"''\"'\"';;' '#\\#`$中' '$\"`' ' `a' ''",
    ),
    [
      " 中🙂'; \"", "$;中\n$\n🙂\\🙂", "'';;", "#\\#`$中", "$\"`", " `a",
      "",
    ],
  )
}

///|
test "shlex quote oracle 252" {
  assert_eq(
    join_command(["\"`\\ ", "$\\$$ $", "$🙂$;\n 中中", "'\"\";`#"]),
    "'\"`\\ ' '$\\$$ $' '$🙂$;\n 中中' ''\"'\"'\"\";`#'",
  )
  assert_eq(
    split_command("'\"`\\ ' '$\\$$ $' '$🙂$;\n 中中' ''\"'\"'\"\";`#'"),
    ["\"`\\ ", "$\\$$ $", "$🙂$;\n 中中", "'\"\";`#"],
  )
}

///|
test "shlex quote oracle 253" {
  assert_eq(
    join_command([";`", "🙂🙂\";🙂 \"#", "$;`中a中\\\\"]),
    "';`' '🙂🙂\";🙂 \"#' '$;`中a中\\\\'",
  )
  assert_eq(split_command("';`' '🙂🙂\";🙂 \"#' '$;`中a中\\\\'"), [
    ";`", "🙂🙂\";🙂 \"#", "$;`中a中\\\\",
  ])
}

///|
test "shlex quote oracle 254" {
  assert_eq(
    join_command([
      "\\中;中🙂", "'\"\\$", "\"$#$", "a 🙂中", "`;\\\n$\"\"", "\\$中", " \n\\中🙂\n;",
    ]),
    "'\\中;中🙂' ''\"'\"'\"\\$' '\"$#$' 'a 🙂中' '`;\\\n$\"\"' '\\$中' ' \n\\中🙂\n;'",
  )
  assert_eq(
    split_command(
      "'\\中;中🙂' ''\"'\"'\"\\$' '\"$#$' 'a 🙂中' '`;\\\n$\"\"' '\\$中' ' \n\\中🙂\n;'",
    ),
    [
      "\\中;中🙂", "'\"\\$", "\"$#$", "a 🙂中", "`;\\\n$\"\"", "\\$中", " \n\\中🙂\n;",
    ],
  )
}

///|
test "shlex quote oracle 255" {
  assert_eq(
    join_command([
      "'#", "$#'`\\'`;", "中;🙂`$`;", "`' 🙂\\;#", "中中;\n$\\'`", "", "a\n中$;\\$#",
    ]),
    "''\"'\"'#' '$#'\"'\"'`\\'\"'\"'`;' '中;🙂`$`;' '`'\"'\"' 🙂\\;#' '中中;\n$\\'\"'\"'`' '' 'a\n中$;\\$#'",
  )
  assert_eq(
    split_command(
      "''\"'\"'#' '$#'\"'\"'`\\'\"'\"'`;' '中;🙂`$`;' '`'\"'\"' 🙂\\;#' '中中;\n$\\'\"'\"'`' '' 'a\n中$;\\$#'",
    ),
    [
      "'#", "$#'`\\'`;", "中;🙂`$`;", "`' 🙂\\;#", "中中;\n$\\'`", "", "a\n中$;\\$#",
    ],
  )
}

///|
test "shlex quote oracle 256" {
  assert_eq(join_command(["$`a"]), "'$`a'")
  assert_eq(split_command("'$`a'"), ["$`a"])
}
