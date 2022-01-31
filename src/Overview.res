let value = 18

let answer = `Hey, I'm ${value->Belt.Int.toString}`

let sumFloat = 12.3 +. 12.5

let myRef = ref(2)
myRef.contents = 12

// Used Defined types

type profile = {
  name: string,
  age: int,
}

let userProfile = {
  name: "Diogo",
  age: 18,
}

type t // phantom type

// ADT, Algebraic Data Types -> Variants

type person = User(profile) | Admin(profile) | Person(profile)

let diogo = User({
  name: "D",
  age: 18,
})

let unbox = person => {
  switch person {
  | User({name}) => `Hello, ${name}`
  | Person({name}) => `Hello, ${name}`
  | Admin({name}) => `Hello, ${name}`
  }
}

unbox(diogo)->Js.log

// polyvariant

type role = [#admin | #user | #masteradmin]

let myProfileRole: role = #admin // compile to string

let fn = (~person: person, ~isSpecial=false, ()) => {
  switch person {
  | User({name}) if isSpecial => `Hello, Mr. ${name}`
  | User({name}) => `Hello, ${name}`
  | Person({name}) => `Hello, ${name}`
  | Admin({name}) => `Hello, ${name}`
  }
}
