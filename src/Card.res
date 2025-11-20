type props = {
  ...General.baseComponentProps,
  children: React.element,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "Card"
