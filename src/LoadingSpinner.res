type size = | ...General.xs | ...General.sm | ...General.md

type layout = [#inline | #centered]

type loadingSpinnerProps = {
  ...General.baseComponentProps,
  /**
     * The text that displays next to the spinner. Note: the label is not shown by default, you must set `showLabel` to `true` to display the label.
     *
     */
  label: string,
  /**
     * When set to `true`, the label will appear next to the spinner.
     *
     * @defaultValue `false`
     */
  showLabel?: bool,
  /**
     * The size of the spinner.
     *
     * @defaultValue `"sm"`
     */
  size?: size,
  /**
     * The position of the spinner. Can be one of `inline` or `centered`.
     *
     * @defaultValue `"inline"`
     */
  layout?: layout,
}

@module("@hubspot/ui-extensions") @react.component(: loadingSpinnerProps)
external make: loadingSpinnerProps => React.element = "LoadingSpinner"
