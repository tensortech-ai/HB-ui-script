type variant = [#success | #danger | #warning]

type props = {
  ...General.baseComponentProps,
  /**
     * The text that displays above the progress bar.
     *
     */
  title?: string,
  /**
     * Accessibility label.
     *
     */
  \"aria-label"?: string,
  /**
     * Whether the progress bar displays the completion percentage.
     *
     * @defaultValue `false`
     */
  showPercentage?: bool,
  /**
     * The number representing the progress so far.
     *
     * @defaultValue `0`
     */
  value?: float,
  /**
     * The maximum value of the progress bar.
     *
     * @defaultValue `100`
     */
  maxValue?: float,
  /**
     * The text that explains the current state of the value property. For example, "150 out of 250". Displays above the progress bar on the right side.
     *
     */
  valueDescription?: string,
  /**
     * The color that indicates the type of progress bar.
     *
     * @defaultValue `"success"`
     */
  variant?: variant,
  /** @deprecated use maxValue instead */
  valueMax?: float,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "ProgressBar"
