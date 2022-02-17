module Styles = {
  open Emotion

  let {toString: colorToString} = module(Theme.Colors)

  let checkBoxWrapper = css({
    "border": "solid 2px red",
    "> input": {
      "display": "none",
    },
  })

  let checkbox = css({
    "cursor": "pointer",
    "width": "2.4rem",
    "height": "2.4rem",
    "border": `solid 2px ${Theme.Colors.primary->colorToString}`,
    "border": "6px",
    "&:after": {
      "borderRadius": "6px",
      "content": "' '",
      "position": "absolute",
      "width": "100%",
      "height": "100%",
      "top": 0,
      "left": 0,
      "background": Theme.Colors.primary->colorToString,
      "transform": "scale(0)",
    },
  })
}

@react.component
let make = (~checked=?, ~onChange=?) => {
  <label className=Styles.checkBoxWrapper>
    <input ?checked ?onChange type_="checkbox" /> <div className=Styles.checkbox> <img /> </div>
  </label>
}
