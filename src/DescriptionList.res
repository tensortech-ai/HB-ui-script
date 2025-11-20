type direction = [#row | #column]

/**
 * The props type for {@link !components.DescriptionList}.
 *
 * @category Component Props
 */
type props = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components. The children should be {@link !components.DescriptionListItem}.
     *
     */
  children: React.element,
  /**
     * The direction the label/value pairs are placed in the description list container.
     *
     * @defaultValue `#column`
     */
  direction?: direction,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "DescriptionList"
