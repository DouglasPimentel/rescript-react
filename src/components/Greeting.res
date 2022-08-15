@react.component
let make = (~name: option<string>=?) => {
  let greeting = switch name {
  | Some(name) => "Hello " ++ name ++ "!"
  | None => "Hello stranger!"
  }
  <p> {React.string(greeting)} </p>
}
