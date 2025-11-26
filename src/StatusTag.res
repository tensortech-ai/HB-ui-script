type variant = [#danger | #warning | #info | #success | #default]

type p = {
  ...General.baseComponentProps,
  /**
     * The status tag's indicator color.
     *
     * @defaultValue `"default"`
     */
  variant?: variant,
  /**
     * When set to true, the status tag's dot will be a ring instead.
     *
     * @defaultValue `false `
     */
  hollow?: bool,
  /**
     * A function that will be invoked when the status tag is clicked. It receives no arguments and its return value is ignored.
     *
     * @event
     */
  onClick?: unit => unit,
  /**
     * When set to true, the status tag will show a small clickable 'x' icon.
     *
     * @defaultValue `false`
     */
  showRemoveIcon?: bool,
  /**
     * A function that will be invoked when the 'x' icon is clicked. It receives no arguments and its return value is ignored.
     *
     * @event
     */
  onRemoveClick?: unit => unit,
  /**
     * Sets the content that will render inside the StatusTag. This prop is passed implicitly by providing sub-components. We recommend only using a small amount of text.
     */
  children: React.element,
}

@module("@hubspot/ui-extensions") @react.component(: p)
external make: p => React.element = "StatusTag"
