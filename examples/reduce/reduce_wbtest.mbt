///|
test "numeric workflow computes and checks invalid domain" {
  assert_eq(
    reduce(["sum", "3", "5", "8"]),
    ({ "operation": "sum", "count": 3, "result": 16 } : Json),
  )
  assert_eq(
    reduce(["mean", "3", "5", "--scale=2"]),
    ({ "operation": "mean", "count": 2, "result": 8 } : Json),
  )
  assert_true(
    (Ok(reduce(["sum", "2", "--scale=1001"])) catch { e => Err(e) })
    is Err(@docopt.Conversion(_)),
  )
}
