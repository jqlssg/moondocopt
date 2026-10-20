///|
/// Immutable compiled parser, reusable for multiple argv vectors.
pub struct Parser {
  priv document : Document
  priv tree : Pattern
  priv specs : Array[OptionSpec]
  priv limits : Limits
}

///|
fn find_spec(
  specs : Array[OptionSpec],
  name : String,
) -> Int32? raise DocoptError {
  let mut found = None
  for i, spec in specs {
    if spec.short == Some(name) || spec.long == Some(name) {
      guard found == None else {
        raise Language("duplicate option declaration: " + name)
      }
      found = Some(i)
    }
  }
  found
}

///|
/// Bind aliases before parsing the grammar; consume option metavariables.
fn bind_usage(
  doc : Document,
  specs : Array[OptionSpec],
) -> Array[UsageToken] raise DocoptError {
  let tokens = doc.tokens()
  let out = []
  let mut i = 0
  while i < tokens.length() {
    let token = tokens[i]
    let name = token.text
    i += 1
    if name.has_prefix("--") && name != "--" {
      let eq = name.find("=")
      let key = name[:eq.unwrap_or(name.length())].to_owned()
      let index = match find_spec(specs, key) {
        Some(n) => n
        None => {
          specs.push({
            short: None,
            long: Some(key),
            takes_value: eq != None,
            default_value: None,
          })
          specs.length() - 1
        }
      }
      let spec = specs[index]
      guard eq == None || spec.takes_value else {
        raise Language(key + " must not take an argument")
      }
      if spec.takes_value && eq == None {
        guard i < tokens.length() else {
          raise Language(key + " requires a metavariable")
        }
        i += 1
      }
      out.push({ text: spec.key(), offset: token.offset, })
    } else if name.has_prefix("-") && name != "-" && name != "--" {
      let mut j = 1
      while j < name.length() {
        let key = "-" + name[j:j + 1].to_owned()
        j += 1
        let index = match find_spec(specs, key) {
          Some(n) => n
          None => {
            specs.push({
              short: Some(key),
              long: None,
              takes_value: false,
              default_value: None,
            })
            specs.length() - 1
          }
        }
        let spec = specs[index]
        out.push({ text: spec.key(), offset: token.offset, })
        if spec.takes_value {
          if j == name.length() {
            guard i < tokens.length() else {
              raise Language(key + " requires a metavariable")
            }
            i += 1
          }
          break
        }
      }
    } else {
      out.push(token)
    }
  }
  out
}

///|
fn collect_words(tree : Pattern, names : Map[String, Bool]) -> Unit {
  match tree {
    Word(s) => names[s] = true
    Required(xs) | Optional(xs) | Either(xs) =>
      for x in xs {
        collect_words(x, names)
      }
    Repeat(x) => collect_words(x, names)
    Shortcut => ()
  }
}

///|
fn expand_shortcut(
  tree : Pattern,
  specs : Array[OptionSpec],
  explicit : Map[String, Bool],
) -> Pattern {
  match tree {
    Shortcut =>
      Optional(
        specs
        .filter(fn(s) { !explicit.contains(s.key()) })
        .map(fn(s) { Word(s.key()) }),
      )
    Required(xs) =>
      Required(xs.map(fn(x) { expand_shortcut(x, specs, explicit) }))
    Optional(xs) =>
      Optional(xs.map(fn(x) { expand_shortcut(x, specs, explicit) }))
    Either(xs) => Either(xs.map(fn(x) { expand_shortcut(x, specs, explicit) }))
    Repeat(x) => Repeat(expand_shortcut(x, specs, explicit))
    Word(_) => tree
  }
}

///|
/// Compile docopt Usage and Options. No argument parsing or process exits occur.
pub fn Parser::new(
  help : String,
  limits~ : Limits = Limits::default(),
) -> Parser raise DocoptError {
  limits.validate()
  guard help.length() <= limits.document_units else {
    raise Limit("help document too large")
  }
  let document = Document::new(help)
  let specs = document.options()
  let tokens = bind_usage(document, specs)
  let cursor = { tokens, position: 0, }
  let raw = cursor.expression(0)
  guard cursor.peek() == None else { raise Language("unexpected usage closer") }
  let explicit = Map([])
  collect_words(raw, explicit)
  { document, specs, limits, tree: expand_shortcut(raw, specs, explicit), }
}

///|
pub fn Parser::program(self : Parser) -> String {
  self.document.program
}

///|
pub fn Parser::usage(self : Parser) -> String {
  self.document.usage
}

///|
pub fn Parser::options(self : Parser) -> Array[OptionSpec] {
  self.specs.copy()
}

///|
/// Canonical output keys, including optional and alternate leaves.
pub fn Parser::keys(self : Parser) -> Array[String] {
  let names = Map([])
  collect_words(self.tree, names)
  let keys = names.keys().to_array()
  keys.sort_by(fn(a, b) { a[:].lexical_compare(b[:]) })
  keys
}
