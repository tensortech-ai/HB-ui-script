type variant = [#transparent | #input]

type buttonType = [#button | #reset | #submit]

@unboxed
type valueT = String(string) | Number(int) | Boolean(bool)

type baseSelectProps = {
  ...General.baseComponentProps,
  /**
     * The text that displays above to the dropdown menu.
     *
     */
  label?: string,
  /**
     * The unique identifier for the select element.
     *
     */
  name?: string,
  /**
     * When set to `true`, displays a required field indicator.
     *
     * @defaultValue `false`
     */
  required?: bool,
  /**
     * When set to `true`, sets the field as read-only on the CRM record, and users will not be able to fill the input field.
     *
     * @defaultValue `false`
     */
  readOnly?: bool,
  /**
     * Displayed text that describes the field's purpose.
     *
     */
  description?: string,
  /**
     * The text that displays in a tooltip next to the label.
     *
     */
  tooltip?: string,
  /**
     * Text that appears in the input when no value is set.
     *
     */
  placeholder?: string,
  /**
     * When set to `true`, `validationMessage` is displayed as an error message if provided.
     * The input will also render its error state to let the user know there's an error.
     * If left `false` (default), `validationMessage` is displayed as a success message.
     *
     * @defaultValue `false`
     */
  error?: bool,
  /**
     * The text to show if the input has an error.
     *
     */
  validationMessage?: string,
  /**
     * The variant type for the select.
     *
     * @defaultValue `"input"`
     */
  variant?: variant,
}

type option = {
  label: string,
  value: valueT,
}

type multiSelectProps = {
  ...baseSelectProps,
  options: array<valueT>,
  value: Nullable.t<array<valueT>>,
  onChange: Nullable.t<(~value: array<valueT>) => unit>,
}

@module("@hubspot/ui-extensions") @react.component(: multiSelectProps)
external make: multiSelectProps => React.element = "MultiSelect"
