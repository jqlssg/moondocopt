///|
/// Migrate an existing docopt-style build interface without a second schema.
/// Expands sources into C compiler argv vectors. It deliberately does not run cc.
fn plan(argv : Array[String]) -> Json raise @docopt.DocoptError {
  let parser = @docopt.Parser::new(
    "Usage: plan (debug|release) [--define=KV]... [--out=DIR] <source>...\nOptions:\n  --define=KV  Preprocessor definition\n  --out=DIR  Output directory [default: build]",
  )
  let v = parser.parse(argv)
  let output = v.require_text("--out")
  guard output != "" else {
    raise @docopt.Conversion("output directory must not be empty")
  }
  let sources = v.texts("<source>")
  let definitions = v.texts("--define")
  let jobs = []
  for index, source in sources {
    guard source.has_suffix(".c") && source.length() > 2 else {
      raise @docopt.Conversion("source must end in .c")
    }
    let args = ["cc", "-c", source, "-o", output + "/object-\{index}.o"]
    args.push(if v.flag("release") { "-O2" } else { "-g" })
    for definition in definitions {
      guard definition != "" && !definition.has_prefix("=") else {
        raise @docopt.Conversion("invalid definition")
      }
      args.push("-D" + definition)
    }
    jobs.push(
      (
        {
          "argv": Json(args),
          "display_posix": Json(@docopt.join_command(args)),
        } : Json),
    )
  }
  { "jobs": Json::array(jobs), "object_count": Json(sources.length()) }
}

///|
fn main {
  let args = @cliargs.arguments()
  println(
    plan(
      if args.is_empty() {
        ["release", "--define=LOG=1", "src/main.c"]
      } else {
        args
      },
    ).stringify(),
  ) catch {
    e => println("error: " + e.message())
  }
}
