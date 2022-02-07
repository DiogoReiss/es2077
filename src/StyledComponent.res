module Style = ReactDOM.Style

module Styles = {
  open CssJs

  let container = style(. [display(#flex), alignItems(#center), justifyContent(#center)])

  let text = style(. [color(red), fontSize(#rem(1.8))])
}

let s = content => React.string(content)

@react.component
let make = () => {
  <div className=Styles.container>
    <h1 className=Styles.text> {`Hello from ReScript`->s} </h1>
  </div>
}
