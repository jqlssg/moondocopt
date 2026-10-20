///|
test "build workflow produces distinct object outputs and preserves argument boundaries" {
  let result = plan(["debug", "--define=NAME=a b", "src/one.c", "src/two.c"])
  guard result is Object(fields) else { fail("object expected") }
  assert_eq(fields.get("object_count"), Some(Json(2)))
  guard fields.get("jobs") is Some(Array(jobs)) else { fail("jobs expected") }
  guard jobs[0] is Object(job) else { fail("job expected") }
  assert_eq(
    job.get("argv"),
    Some(
      Json([
        "cc", "-c", "src/one.c", "-o", "build/object-0.o", "-g", "-DNAME=a b",
      ]),
    ),
  )
  assert_true(
    (Ok(plan(["release", "bad.txt"])) catch { e => Err(e) })
    is Err(@docopt.Conversion(_)),
  )
}
