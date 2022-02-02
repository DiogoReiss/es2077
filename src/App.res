@react.component
let make = (~message, ~placeholder=?) => {
  <div className="main-container"> <h1> {message->React.string} </h1> <input ?placeholder /> </div>
}
