/**
 * The props type for {@link !components.DescriptionListItem}.
 *
 * @category Component Props
 */
type props = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children: React.element,
  /**
     * Text to be displayed as the label.
     *
     */
  label: string,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "DescriptionListItem"
