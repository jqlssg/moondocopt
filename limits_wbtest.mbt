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
