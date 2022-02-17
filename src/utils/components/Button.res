open Render

module Styles = {
  open Emotion

  let button = css({
    "color": Theme.Colors.white->Theme.Colors.toString,
    "height": "3.8rem",
    "backgroundColor": Theme.Colors.primary->Theme.Colors.toString,
    "minWidth": "10.5rem",
    "borderRadius": "6px",
    "border": "none",
    "outline": "none",
    "fontSize": "1.6rem",
    "lineHeight": "2.1rem",
    "letterSpacing": "-0.035em",
    "cursor": "pointer",
    "transition": "300ms",
    ":&hover": {
      "backgroundColor": Theme.Colors.primaryDark->Theme.Colors.toString,
    },
  })
}

@react.component
let make = (~children, ~onClick=?) => {
  <button ?onClick className=Styles.button> {children->s} </button>
}
