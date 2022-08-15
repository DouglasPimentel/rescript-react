@react.component
let make = (~src: string, ~alt: string, ~className: string) => {
  <img className={`logo ${className}`} src={src} alt={alt} />
}
