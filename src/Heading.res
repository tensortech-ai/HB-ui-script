/**
 * The props type for {@link !components.Heading}.
 *
 * @category Component Props
 */
type p = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children: React.element,
  /**
     * When set to true, text will not line break.
     *
     * @defaultValue `false`
     */
  inline?: bool,
}

@module("@hubspot/ui-extensions") @react.component(: p)
external make: p => React.element = "Heading"
