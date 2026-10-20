///|
/// Explicit ceilings for untrusted help/argv. Values must all be positive.
pub(all) struct Limits {
  document_units : Int32
  usage_tokens : Int32
  options : Int32
  argv_count : Int32
  argv_units : Int32
  match_steps : Int32
}

///|
pub fn Limits::default() -> Limits {
  {
    document_units: 65536,
    usage_tokens: 8192,
    options: 2048,
    argv_count: 4096,
    argv_units: 1048576,
    match_steps: 1000000,
  }
}

///|
fn Limits::validate(self : Limits) -> Unit raise DocoptError {
  guard self.document_units > 0 &&
    self.usage_tokens > 0 &&
    self.options > 0 &&
    self.argv_count > 0 &&
    self.argv_units > 0 &&
    self.match_steps > 0 else {
    raise Language("resource limits must be positive")
  }
  guard self.document_units <= 1048576 &&
    self.usage_tokens <= 32768 &&
    self.options <= 8192 &&
    self.argv_count <= 32768 &&
    self.argv_units <= 16777216 &&
    self.match_steps <= 100000000 else {
    raise Language("resource limits exceed hard safety ceilings")
  }
}

///|
priv struct MatchBudget {
  mut remaining : Int32
}

///|
fn MatchBudget::charge(
  self : MatchBudget,
  cost : Int32,
) -> Unit raise DocoptError {
  guard cost <= self.remaining else {
    raise Limit("matching work budget exhausted")
  }
  self.remaining -= cost
}
