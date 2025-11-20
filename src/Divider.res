type dividerProps = {
  ...JsxDOM.domProps,
  ...General.baseComponentProps,
  /**
     * The space between the divider and the content above and below it.
     *
     * @defaultValue `"small"`
     */
  distance?: General.allDistances,
}

@module("@hubspot/ui-extensions") @react.component(: dividerProps)
external make: dividerProps => React.element = "Divider"
