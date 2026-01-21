type p = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children?: React.element,
  /**
     * When set to `true`, reduces the default amount of padding around the contents of the Tile.
     *
     * @defaultValue `false`
     */
  compact?: bool,
  /**
     * When set to `true`, removes left and right padding from tile contents.
     *
     * @defaultValue `false`
     */
  flush?: bool,
}

@module("@hubspot/ui-extensions") @react.component(: p)
external make: p => React.element = "Tile"
