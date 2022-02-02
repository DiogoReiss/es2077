let root = ReactDOM.querySelector("#root")

let () = switch root {
| Some(element) =>
  ReactDOM.render(
    <React.StrictMode> <App message="ew" placeholder="just a placeholder" /> </React.StrictMode>,
    element,
  )
| None => Js.Exn.raiseError("Root not found!")
}
