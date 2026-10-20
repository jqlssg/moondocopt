///|
/// Stable error categories for embedding; full help is not put in errors.
pub fn DocoptError::category(self : DocoptError) -> String {
  match self {
    Language(_) => "language"
    Arguments(_) => "arguments"
    Limit(_) => "limit"
    Conversion(_) => "conversion"
  }
}

///|
pub fn DocoptError::message(self : DocoptError) -> String {
  match self {
    Language(s) | Arguments(s) | Limit(s) | Conversion(s) => s
  }
}

///|
fn error_json(category : String, message : String) -> Json {
  { "status": "error", "category": Json(category), "message": Json(message) }
}

///|
fn request_bool(
  fields : Map[String, Json],
  key : String,
  fallback : Bool,
) -> Bool raise DocoptError {
  match fields.get(key) {
    None => fallback
    Some(True) => true
    Some(False) => false
    _ => raise Conversion(key + " must be a JSON boolean")
  }
}

///|
fn Parser::request_checked(
  self : Parser,
  request : Json,
) -> Json raise DocoptError {
  guard request is Object(fields) else {
    raise Conversion("request must be an object")
  }
  for key, _ in fields {
    guard ["argv", "help", "version", "options_first"].contains(key) else {
      raise Conversion("unknown request field " + key)
    }
  }
  guard fields.get("argv") is Some(Array(items)) else {
    raise Conversion("argv must be an array")
  }
  guard items.length() <= self.limits.argv_count else {
    raise Limit("too many argv items")
  }
  let argv = []
  for item in items {
    guard item is String(s) else {
      raise Conversion("argv items must be strings")
    }
    argv.push(s)
  }
  let version = match fields.get("version") {
    None | Some(Null) => None
    Some(String(s)) => Some(s)
    _ => raise Conversion("version must be a string or null")
  }
  match
    self.run(
      argv,
      help=request_bool(fields, "help", true),
      version~,
      options_first=request_bool(fields, "options_first", false),
    ) {
    Parsed(values) => { "status": "parsed", "values": values.to_json() }
    Help(text) => { "status": "help", "text": Json(text) }
    Version(text) => { "status": "version", "text": Json(text) }
  }
}

///|
/// JSON embedding API with explicit status envelopes and strict field checking.
pub fn Parser::request(self : Parser, request : Json) -> Json {
  self.request_checked(request) catch {
    e => error_json(e.category(), e.message())
  }
}

///|
/// Reject duplicate keys and deep JSON before interpreting the request.
pub fn Parser::request_json(self : Parser, text : String) -> Json {
  if text.length() > self.limits.argv_units {
    return error_json("limit", "JSON request too large")
  }
  let request = @json.parse(
    text[:],
    max_nesting_depth=16,
    reject_duplicate_keys=true,
  ) catch {
    _ => return error_json("json", "invalid JSON request")
  }
  self.request(request)
}
