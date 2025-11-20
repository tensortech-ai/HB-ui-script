type errorStateType = [#error | #support | #lock]

type props = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children: React.element,
  /**
     * The text of the title header.
     *
     */
  title?: string,
  /**
     * The type of error image that will be shown.
     *
     * @defaultValue `"error"`
     */
  \"type"?: errorStateType,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "Alert"
