type variant = [#bodytext | #microcopy]

type fontWeight = [#regular | #bold | #demibold]

type lineDecoration = [#none | #underline | #strikethrough]

type textTransform = [#none | #uppercase | #lowercase | #capitalize | #sentenceCase]

type textFormatOptions = {
  /**
     * Weight of the font.
     *
     * @defaultValue `"regular"`
     */
  fontWeight?: fontWeight,
  /**
     * If `true`, font will be in italicized.
     *
     * @defaultValue `false`
     */
  italic?: bool,
  /**
     * Line decoration of the font.
     *
     * @defaultValue `"none"`
     */
  lineDecoration?: lineDecoration,
  /**
     * Controls the capitalization of text.
     *
     * - `none`: No capitalization changes (default)
     * - `uppercase`: Transforms all characters to uppercase
     * - `lowercase`: Transforms all characters to lowercase
     * - `capitalize`: Capitalizes the first letter of each word
     * - `sentenceCase`: Capitalizes the first letter of the text and makes the rest lowercase
     *
     * @defaultValue `"none"`
     */
  textTransform?: textTransform,
}

type truncateOptions = {
  maxWidth?: float,
  tooltipText?: string,
}

@unboxed
type truncate = Boolean(bool) | TruncateOptions(truncateOptions)

type textProps = {
  ...General.baseComponentProps,
  /**
     * The style of text to display. Can be either of:
     *
     * - bodytext: the default value which renders the standard text size.
     * - microcopy: smaller text used for adding context.
     *
     * @defaultValue `"bodytext"`
     */
  variant?: variant,
  /**
     * When set to `true`, inserts a line break.
     *
     * @defaultValue `false`
     */
  inline?: bool,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     */
  children: React.element,
  /**
     * @interface
     * The style of text to display. Can be any of:
     *
     * - { fontWeight: 'bold' }
     * - { fontWeight: 'demibold' }
     * - { italic: true }
     * - { lineDecoration: 'strikethrough' }
     * - { lineDecoration: 'underline' }
     * - <Text inline={true}>
     */
  format?: textFormatOptions,
  /**
     * @interface
     * truncates long strings to a single line. If the full string doesn't fit in one line,
     * it's shown in a tooltip on hover.
     *
     * - `false` => no truncation(default).
     * - `true` => truncates the string to a single line. Full-text will show inside the tooltip.
     * - { tooltipText: 'some text' } => truncates the string and lets you control the contents of the tooltip.
     * - { maxWidth: 150 } => sets the width(in pixel) of the line.
     *
     * @defaultValue `false`
     */
  truncate?: truncate,
}

@module("@hubspot/ui-extensions") @react.component(: textProps)
external make: textProps => React.element = "Text"
