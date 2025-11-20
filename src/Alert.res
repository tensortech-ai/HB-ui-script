type variant =
  | @as("info") Info
  | @as("warning") Warning
  | @as("success") Success
  | @as("error") Error
  | @as("danger") Danger
  | @as("tip") Tip

type props = {
  ...General.baseComponentProps,
  /**
     * The bolded title text of the alert.
     *
     */
  title: string,
  /**
     * The main content of the alert message.
     *
     */
  children?: React.element,
  /**
     * The color of the alert.
     *
     * @defaultValue `"info"`
     */
  variant?: variant,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "Alert"
