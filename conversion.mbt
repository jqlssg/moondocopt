///|
/// Require a present scalar; unknown keys and absent optional values differ.
pub fn Values::require_text(
  self : Values,
  key : String,
) -> String raise DocoptError {
  match self.text(key) {
    Some(v) => v
    None => raise Conversion(key + " has no value")
  }
}

///|
/// Return an owned repeated argument/option vector.
pub fn Values::texts(
  self : Values,
  key : String,
) -> Array[String] raise DocoptError {
  match self.items.get(key) {
    Some(Texts(xs)) => xs.copy()
    _ => raise Conversion(key + " is not repeated text")
  }
}

///|
pub fn Values::count(self : Values, key : String) -> Int32 raise DocoptError {
  match self.items.get(key) {
    Some(Count(n)) => n
    _ => raise Conversion(key + " is not a repetition count")
  }
}

///|
/// Strict ASCII decimal, accepting one leading sign but no spaces or suffix.
/// Int64 is only an accumulator; every multiplication is bounded beforehand.
fn decimal_int(text : String, key : String) -> Int32 raise DocoptError {
  guard text != "" else {
    raise Conversion(key + " is empty, expected an integer")
  }
  let negative = text[0] == 45
  let mut i = if negative || text[0] == 43 { 1 } else { 0 }
  guard i < text.length() else {
    raise Conversion(key + " has a sign without digits")
  }
  let ceiling : Int64 = if negative { 2147483648L } else { 2147483647L }
  let mut n = 0L
  while i < text.length() {
    let c = text[i].to_int()
    guard c >= 48 && c <= 57 else {
      raise Conversion(key + " is not decimal at offset \{i}")
    }
    let digit = (c - 48).to_int64()
    guard n <= (ceiling - digit) / 10L else {
      raise Conversion(key + " exceeds Int32 range")
    }
    n = n * 10L + digit
    i += 1
  }
  (if negative { -n } else { n }).to_int()
}

///|
/// Decode a scalar with explicit inclusive domain bounds.
pub fn Values::integer(
  self : Values,
  key : String,
  minimum~ : Int32 = -2147483648,
  maximum~ : Int32 = 2147483647,
) -> Int32 raise DocoptError {
  guard minimum <= maximum else { raise Conversion("invalid integer bounds") }
  let n = decimal_int(self.require_text(key), key)
  guard n >= minimum && n <= maximum else {
    raise Conversion(key + " outside permitted range")
  }
  n
}

///|
/// Validate enum-like options without silently falling back to a default.
pub fn Values::choice(
  self : Values,
  key : String,
  allowed : Array[String],
) -> String raise DocoptError {
  let v = self.require_text(key)
  guard allowed.contains(v) else {
    raise Conversion(key + " has an unsupported value")
  }
  v
}

///|
/// Decode repeated scalar integers with the same overflow rules.
pub fn Values::integers(
  self : Values,
  key : String,
) -> Array[Int32] raise DocoptError {
  self.texts(key).map(s => decimal_int(s, key))
}
