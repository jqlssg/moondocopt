///|
test "shellwords empty concatenated unicode and literal expansion syntax" {
  assert_eq(split_command("ab' c'\"d\" '' '中文🙂' $HOME '*.mbt'"), [
    "ab cd", "", "中文🙂", "$HOME", "*.mbt",
  ])
  assert_eq(split_command("a\\ b c\\\nd \"a\\q\""), ["a b", "cd", "a\\q"])
  assert_eq(split_command("a#rest", comments=true), ["a"])
  assert_true(
    (Ok(split_command("'x")) catch { e => Err(e) }) is Err(Conversion(_)),
  )
  assert_true(
    (Ok(split_command("a b", max_words=1)) catch { e => Err(e) })
    is Err(Limit(_)),
  )
  assert_eq(
    Parser::new("Usage: p <x>").parse_line("'with space'").require_text("<x>"),
    "with space",
  )
}
