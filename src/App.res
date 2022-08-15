@module("./assets/react.svg") external logoReact: string = "default"
@module("./assets/vite.svg") external logoVite: string = "default"
@module("./assets/rescript.svg") external logoRescript: string = "default"
%%raw(`import './App.css'`)

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)
  let name = Some("John Doe")

  <div className="App">
    <Logo className="logo-vite" src={logoVite} alt="Logo Vite" />
    <Logo className="logo-react" src={logoReact} alt="Logo React" />
    <Logo className="logo-rescript" src={logoRescript} alt="Logo ReScript" />
    <Title label="Vite + React + ReScript" />
    <Greeting ?name />
    <p> {React.string(`count is: ${count->Belt.Int.toString}`)} </p>
    <button onClick={_e => setCount(count => count + 1)}> {React.string("Click me!")} </button>
  </div>
}
