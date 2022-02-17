open Ancestor.Default

Emotion.injectGlobal({
  "html": {
    "fontSize": "10px",
  },
  "html, body, root": {
    "width": "100%",
    "height": "100px",
    "margin": "0",
    "padding": "0",
  },
  "#root": {
    "backgroundColor": Theme.Colors.black->Theme.Colors.toString,
  },
  "*": {
    "boxSixing": "border-box",
    "fontFamily": Theme.Constants.fontFamily,
  },
})

@react.component
let make = () => {
  <Box width=[xs(#pct(100.0))] height=[xs(#pct(100.0))] bgColor=[xs(Theme.Colors.black)]>
    <Button> "Adicionar" </Button>
  </Box>
}
