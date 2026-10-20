///|
/// The host owns records; the console only filters, ranks and returns them.
priv struct Record {
  id : String
  score : Int32
  tags : Array[String]
}

///|
fn select_records(
  line : String,
  records : Array[Record],
) -> Json raise @docopt.DocoptError {
  let p = @docopt.Parser::new(
    "Usage: console select [--min-score=N] [--tag=T]... [--limit=N]\nOptions:\n  --min-score=N  Minimum score [default: 0]\n  --tag=T  Require each tag\n  --limit=N  Maximum rows [default: 10]",
  )
  let v = p.parse_line(line)
  let minimum = v.integer("--min-score", minimum=0, maximum=100)
  let limit = v.integer("--limit", minimum=1, maximum=1000)
  let tags = v.texts("--tag")
  let filtered = []
  for record in records {
    let mut accept = record.score >= minimum
    for tag in tags {
      if !record.tags.contains(tag) {
        accept = false
      }
    }
    if accept {
      filtered.push(record)
    }
  }
  filtered.sort_by(fn(a, b) {
    if a.score != b.score {
      b.score.compare(a.score)
    } else {
      a.id[:].lexical_compare(b.id[:])
    }
  })
  let rows = []
  for i, row in filtered {
    if i >= limit {
      break
    }
    rows.push(({ "id": Json(row.id), "score": Json(row.score) } : Json))
  }
  { "matched": Json(filtered.length()), "rows": Json::array(rows) }
}

///|
fn sample_records() -> Array[Record] {
  [
    { id: "parser", score: 90, tags: ["core", "cli"], },
    { id: "lexer", score: 80, tags: ["core"], },
    { id: "theme", score: 95, tags: ["ui"], },
  ]
}

///|
fn main {
  let args = @cliargs.arguments()
  // Host shells have already split argv. Requoting preserves exact boundaries.
  try {
    let line = if args.is_empty() {
      "select --min-score=50 --tag=core --limit=1"
    } else {
      @docopt.join_command(args)
    }
    println(select_records(line, sample_records()).stringify())
  } catch {
    e => println("error: " + e.message())
  }
}
