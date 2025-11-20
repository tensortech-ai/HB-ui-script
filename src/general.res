type xs =
  | @as("extra-small") ExtraSmall
  | @as("xs") Xs

type sm =
  | @as("small") Small
  | @as("sm") Sm

type md =
  | @as("medium") Medium
  | @as("md") Md

type lg =
  | @as("large") Large
  | @as("lg") Lg

type xl =
  | @as("extra-large") ExtraLarge
  | @as("xl") Xl

type tShirtSizes = {xs: xs, sm: sm, md: md, lg: lg, xl: xl}

type allSizes =
  | ...xs
  | ...sm
  | ...md
  | ...lg
  | ...xl

type baseComponentProps = {testId?: string}

type allDistances =
  | ...allSizes
  | @as("flush") Flush

module ExtensionEvent = {
  type t = {
    \"type": string,
    bubbles: bool,
    timeStamp: float,
    id: string,
  }

  external make: Dom.event => t = "ExtensionEvent"
}

type extensionEvent = ExtensionEvent.t

type hrefOptions = {
  url: string,
  \"external"?: bool,
}

type overlayComponentProps = {overlay?: React.element}

@unboxed
type hrefProp = String(string) | HrefOptions(hrefOptions)
