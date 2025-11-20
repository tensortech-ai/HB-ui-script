type resize = [#vertical | #horizontal | #both | #none]

type props = {
  ...General.baseComponentProps,
  /**
     * The visible width of the text field in average character widths.
     */
  cols?: float,
  /**
     * The maximum number of characters (UTF-16 code units) that the user can enter. If not specified, the max length is unlimited.
     */
  maxLength?: float,
  /**
     * The number of visible text lines for the text field.
     */
  rows?: float,
  /**
     * Sets whether the element is resizable, and if so in which directions.
     *
     * @defaultValue `"both"`
     */
  resize?: resize,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "TextArea"
