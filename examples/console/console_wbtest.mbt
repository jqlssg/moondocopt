///|
test "embedded console filters ranks limits and keeps host storage untouched" {
  let records = sample_records()
  assert_eq(
    select_records("select --tag='core' --min-score=50 --limit=1", records),
    ({ "matched": 2, "rows": [{ "id": "parser", "score": 90 }] } : Json),
  )
  assert_eq(
    select_records("select --tag=core --tag=cli", records),
    ({ "matched": 1, "rows": [{ "id": "parser", "score": 90 }] } : Json),
  )
  assert_eq(records.length(), 3)
  assert_true(
    (Ok(select_records("select --limit=0", records)) catch { e => Err(e) })
    is Err(@docopt.Conversion(_)),
  )
}
