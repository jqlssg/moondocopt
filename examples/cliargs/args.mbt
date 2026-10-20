///|
/// Node supplies two prefix entries, other supported hosts supply one.
pub fn arguments() -> Array[String] {
  let raw = @env.args()
  let start = runtime_prefix()
  let out = []
  for i in start..<raw.length() {
    out.push(raw[i])
  }
  out
}

///|
#cfg(target="js")
fn runtime_prefix() -> Int32 {
  2
}

///|
#cfg(not(target="js"))
fn runtime_prefix() -> Int32 {
  1
}
