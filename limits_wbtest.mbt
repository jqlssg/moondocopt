///|
test "compile argv and work budgets report Limit rather than mismatch" {
  let low = { ..Limits::default(), document_units: 8, }
  assert_true(
    (Ok(Parser::new("Usage: tool <x>", limits=low)) catch { e => Err(e) })
    is Err(Limit(_)),
  )
  let p = Parser::new("Usage: p <x>...", limits={
    ..Limits::default(),
    argv_count: 2,
  })
  assert_true(
    (Ok(p.parse(["a", "b", "c"])) catch { e => Err(e) }) is Err(Limit(_)),
  )
  let q = Parser::new("Usage: p <x>", limits={
    ..Limits::default(),
    match_steps: 1,
  })
  assert_true((Ok(q.parse(["x"])) catch { e => Err(e) }) is Err(Limit(_)))
}

///|
test "option shortcut expansion is bounded before large tree allocation" {
  let help = "Usage: p [options] [options] [options] [options]\nOptions:\n" +
    Array::makei(100, fn(i) { "  --flag\{i}  Flag\n" }).join("")
  assert_true(
    (Ok(Parser::new(help, limits={ ..Limits::default(), usage_tokens: 40, })) catch {
      e => Err(e)
    })
    is Err(Limit(_)),
  )
}

///|
test "configured option limit rejects declared and implicit options at the boundary" {
  let declared = "Usage: p [options]\nOptions:\n  --one  One\n  --two  Two"
  assert_true(
    (Ok(Parser::new(declared, limits={ ..Limits::default(), options: 1, })) catch {
      e => Err(e)
    })
    is Err(Limit(_)),
  )
  let implicit = "Usage: p --one --two"
  assert_true(
    (Ok(Parser::new(implicit, limits={ ..Limits::default(), options: 1, })) catch {
      e => Err(e)
    })
    is Err(Limit(_)),
  )
  assert_eq(
    Parser::new(declared, limits={ ..Limits::default(), options: 2, })
    .parse(["--one"])
    .flag("--one"),
    true,
  )
}
