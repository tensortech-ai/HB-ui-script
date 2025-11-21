type variant = [#primary | #secondary | #destructive | #transparent]

type buttonType = [#button | #reset | #submit]

type size = | ...General.xs | ...General.sm | ...General.md

type baseProps = {
  /**
     * A function that will be invoked when the button is clicked. Do not use this function for submitting a form; use Form's `onSubmit` function instead.
     *
     * @event
     */
  onClick?: Reactions.reactionsHandler<General.extensionEvent>,
  /**
     * A URL that will be opened when the button is clicked. If the value is a URL external to `hubspot.com` it will be opened in a new tab.
     */
  href?: General.hrefProp,
  /**
     * Determines whether or not the button should be disabled.
     */
  disabled?: bool,
  /**
     * Sets the color variation of the button.
     *
     * @defaultValue `#secondary`
     */
  variant?: variant,
  /**
     * Sets the HTML attribute "role" of the button.
     *
     * @defaultValue `#button`
     */
  \"type"?: buttonType,
  /**
     * Sets the content that will render inside the Button. This prop is passed implicitly by providing sub-components. Only regular text and Icons are permitted.
     */
  children: React.element,
  /**
     * Sets the size of the button.
     *
     * @defaultValue `"md"`
     */
  size?: size,
  /**
     * When set to `true`, long button text will be truncated with an ellipsis (`...`) and the full text will appear in a tooltip on hover.
     *
     * @defaultValue `false`
     */
  truncate?: bool,
}

type buttonProps = {
  ...General.baseComponentProps,
  ...baseProps,
}

@module("@hubspot/ui-extensions") @react.component(: buttonProps)
external buttonImpl: props => React.element = "Button"
