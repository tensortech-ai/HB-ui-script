type size = | ...General.xs | ...General.sm | ...General.md

type variant = [#primary | #secondary | #transparent]

type buttonRownDropDownButtonOptionsProps = {
  /**
     * Sets the content for the dropdown button.
     *
     * @defaultValue `"More"`
     */
  text?: string,
  /**
     * Sets the size of the dropdown button.
     *
     * @defaultValue `"md"`
     */
  size?: size,
  /**
     * Controls the appearance of the dropdown button
     *
     * @defaultValue `"secondary"`
     */
  variant?: variant,
}

type props = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     */
  children: React.element,
  /**
     * Disables the dropdown list of buttons that appears when the children expand beyond the horizontal space.
     *
     * @defaultValue `false`
     */
  disableDropdown?: bool,
  /**
     * Controls the appearance and text content of the dropdown button.
     */
  dropDownButtonOptions?: buttonRownDropDownButtonOptionsProps,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "ButtonRow"
