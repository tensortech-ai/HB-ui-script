type baseProps<'t, 'v> = {
  ...General.baseComponentProps,
  /**
     * The label text to display for the form input element.
     */
  label: string,
  /**
     * The unique identifier for the input element, this could be thought of as the HTML5 [Input element's name attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#name).
     */
  name: string,
  /**
     * The value of the input.
     */
  value?: 't,
  /**
     * Determines if the required indicator should be displayed.
     *
     * @defaultValue `false`
     */
  required?: bool,
  /**
     * Determines if the field is editable or not.
     *
     * @defaultValue `false`
     */
  readOnly?: bool,
  /**
     * Instructional message to display to the user to help understand the purpose of the input.
     */
  description?: string,
  /**
     * Text that will appear in a tooltip next to the input label.
     */
  tooltip?: string,
  /**
     * Text that appears in the input when it has no value set.
     */
  placeholder?: string,
  /**
     * If set to `true`, `validationMessage` is displayed as an error message, if it was provided. The input will also render its error state to let the user know there is an error. If set to `false`, `validationMessage` is displayed as a success message.
     *
     * @defaultValue `false`
     */
  error?: bool,
  /**
     * The value of the input on the first render.
     */
  defaultValue?: 't,
  /**
     * The text to show under the input for error or success validations.
     */
  validationMessage?: string,
  /**
     * A callback function that is invoked when the value is committed. Currently these times are `onBlur` of the input and when the user submits the form.
     *
     * @event
     */
  onChange?: (~value: 'v) => unit,
  /**
     * A function that is called and passed the value every time the field is edited by the user. It is recommended that you do not use this value to update state, that is what `onChange` should be used for. Instead this should be used for validation.
     *
     * @event
     */
  onInput?: (~value: 'v) => unit,
  /**
     * A function that is called and passed the value every time the field loses focus.
     *
     * @event
     */
  onBlur?: (~value: 'v) => unit,
  /**
     * A function that is called and passed the value every time the field gets focused.
     *
     * @event
     */
  onFocus?: (~value: 'v) => unit,
}

type props = baseProps<string, string>

@module("@hubspot/ui-extensions")
external make: props => React.element = "Input"
