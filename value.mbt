///|
pub(all) suberror DocoptError {
  Language(String)
  Arguments(String)
  Limit(String)
  Conversion(String)
} derive(@debug.Debug)

///|
pub(all) enum Value {
  Flag(Bool)
  Text(String)
  Missing
  Count(Int32)
  Texts(Array[String])
} derive(Eq, @debug.Debug)

///|
fn copy_value(v : Value) -> Value {
  match v {
    Texts(xs) => Texts(xs.copy())
    _ => v
  }
}

///|
pub fn Value::to_json(self : Value) -> Json {
  match self {
    Flag(b) => Json(b)
    Text(s) => Json(s)
    Missing => Json::null()
    Count(n) => Json(n)
    Texts(xs) => Json(xs)
  }
}

///|
pub struct Values {
  priv items : Map[String, Value]
} derive(@debug.Debug)

///|
pub fn Values::new(items : Map[String, Value]) -> Values {
  let owned = Map([])
  for k, v in items {
    owned[k] = copy_value(v)
  }
  { items: owned, }
}

///|
pub fn Values::get(self : Values, key : String) -> Value? {
  self.items.get(key).map(copy_value)
}

///|
pub fn Values::keys(self : Values) -> Array[String] {
  let keys = self.items.keys().to_array()
  keys.sort_by(fn(a, b) { a[:].lexical_compare(b[:]) })
  keys
}

///|
pub fn Values::to_json(self : Values) -> Json {
  let object = Map([])
  for k, v in self.items {
    object[k] = v.to_json()
  }
  Json::object(object)
}

///|
pub fn Values::flag(self : Values, key : String) -> Bool raise DocoptError {
  match self.items.get(key) {
    Some(Flag(v)) => v
    _ => raise Conversion(key + " is not a flag")
  }
}

///|
pub fn Values::text(self : Values, key : String) -> String? raise DocoptError {
  match self.items.get(key) {
    Some(Text(v)) => Some(v)
    Some(Missing) => None
    _ => raise Conversion(key + " is not optional text")
  }
}

///|
pub extend Value with Eq::{equal, not_equal}

///|
pub extend Value with @debug.Debug::{to_repr}

///|
pub extend Values with @debug.Debug::{to_repr}

///|
pub extend DocoptError with @debug.Debug::{to_repr}
