// useReducer
//type action = Inc | Dec
//let reducer = (state, action) => {
//  switch action {
//  | Inc => state + 1
//  | Dec => state - 1
//  }
//}

@react.component
let make = () => {
  //let (state, dispatch) = React.useReducer(reducer, 0) useReducer
  let message = ref("nothing")

  // useEffect
  //React.useEffect1(() => {
  //  Some(() => Js.log(message.contents))
  //}, [message])
  message.contents = "React Hooks with ReScript"

  <div>
    <h1> {message.contents->React.string} </h1>
    //useState

    //let (count, setCount) = React.useState(() => 0)

    //let handleClick = _ => setCount(i => i + 1)

    //<button onClick={handleClick}> {`Clicked ${count->Js.Int.toString}`->React.string} </button>
    // useReducer

    //<span> {`Clicked ${state->Js.Int.toString}`->React.string} </span>
    //<button onClick={_ => dispatch(Dec)}> {`Dec`->React.string} </button>
    //<button onClick={_ => dispatch(Inc)}> {`Inc`->React.string} </button>
    // useEffect
  </div>
}
