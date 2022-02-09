// Zero cost of runtime and similar compile structure
// FFI -> Foreign Function Interface
// Able to use JS values on the same project
// Able to use NPM packages
// Able to use bindings like a package
// Go-horse bindings
// Able to export ReScript values to JS
// utilizando um modulo externo JS
@module("./JsInterop")
external magicNumber: int = "magicNumber"

@module("./JsInterop")
external maybeString: option<string> = "maybeString"

@module("./JsInterop")
external fn: (int, int) => int = "fn"

fn(2, 4)->Js.log

Js.log(magicNumber + 1)
switch maybeString {
| Some(s) => Js.log(s)
| None => Js.log("String vazia")
}
