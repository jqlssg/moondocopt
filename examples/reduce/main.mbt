///|
/// A small numeric CLI: parse a help-first interface, validate domain values,
/// then compute a result rather than just displaying the parse dictionary.
fn reduce(argv : Array[String]) -> Json raise @docopt.DocoptError {
  let parser = @docopt.Parser::new(
    "Usage: reduce (sum|mean) <n>... [--scale=N]\nOptions:\n  --scale=N  Multiplier [default: 1]",
  )
  let values = parser.parse(argv)
  let numbers = values.integers("<n>")
  let scale = values.integer("--scale", minimum=-1000, maximum=1000)
  let mut sum = 0L
  for n in numbers {
    sum += n.to_int64()
  }
  let result = if values.flag("mean") {
    sum.to_double() / numbers.length().to_double()
  } else {
    sum.to_double()
  }
  {
    "operation": Json(if values.flag("mean") { "mean" } else { "sum" }),
    "count": Json(numbers.length()),
    "result": Json(result * scale.to_double()),
  }
}

///|
fn main {
  let args = @cliargs.arguments()
  println(
    reduce(if args.is_empty() { ["sum", "3", "5", "8"] } else { args }).stringify(),
  ) catch {
    e => println("error: " + e.message())
  }
}
