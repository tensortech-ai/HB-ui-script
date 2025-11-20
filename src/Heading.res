/**
 * The props type for {@link !components.Heading}.
 *
 * @category Component Props
 */
type props = {
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

@module("@hubspot/ui-extensions")
external make: props => React.element = "Heading"
