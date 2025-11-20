@unboxed
type dataRow = Number(float) | String(string)

type chartDataRow = Js.Dict.t<dataRow>

type chartDataOptions = {
  /**
     * A mapping of fields to human-readable labels.
     * We recommend pre-formatting your data to be human-readable instead of using this configuration.
     */
  propertyLabels?: Js.Dict.t<Js.Dict.t<string>>,
}

type chartData = {
  data: array<chartDataRow>,
  options?: chartDataOptions,
}

@unboxed
type data = ChartDataRow(array<chartDataRow>) | ChartData(chartData)

type chartFieldType = [#datetime | #linear | #category]

type chartAxis = {
  /**
     * The dataset field that should be graphed on this axis.
     */
  field: string,
  /**
     * The type of data in the field property. Please read the documentation for the expected formats for each fieldType.
     */
  fieldType: chartFieldType,
  /**
     * The axis display label. Note: this will also be used in the legend and the hover tooltips.
     */
  label?: string,
}

/**
 * The allowed colors for data displayed on the chart.
 */
type chartColor = [
  | #orange
  | #aqua
  | #purple
  | #yellow
  | #pink
  | #blue
  | #green
  | #darkOrange
  | #darkAqua
  | #darkPurple
  | #darkYellow
  | #darkPink
  | #darkBlue
  | #darkGreen
]

type axisPairOptions = {
  /**
     * If provided, the data will be grouped by color for this field.
     */
  groupFieldByColor?: string,
  /**
     * When set to true, grouped data will be stacked.
     *
     * @defaultValue `false`
     */
  stacking?: bool,
  /**
     * If provided, assigns a color to each specified values of the field provided in `groupFieldByColor`.
     */
  colors?: Js.Dict.t<chartColor>,
}

type chartAxisPair = {
  /**
     * The field to use for the horizontal x-axis.
     */
  x: chartAxis,
  /**
     * The field to use for the vertical y-axis.
     */
  y: chartAxis,
  /**
     * Configuration options for the pair of axes.
     */
  options?: axisPairOptions,
}

/**
 * The type of field for this axis.
 * - `datetime`: Used for time data, such as JavaScript timestamps.
 * - `linear`: Used for numerical data, such as quantities.
 * - `category`: Used for categorical data, such as different types of products.
 *
 * Please read the documentation for recommended usage.
 */
type chartOptions = {
  /**
     * Renders a title above the chart.
     */
  title?: string,
  /**
     * When set to `true`, shows a legend for the chart.
     *
     * @defaultValue `false`
     */
  showLegend?: bool,
  /**
     * When set to `true`, shows hover tooltips for the charted data.
     *
     * @defaultValue `false`
     */
  showTooltips?: bool,
  /**
     * When set to `true`, shows labels for the data directly on the chart.
     *
     * @defaultValue `false`
     */
  showDataLabels?: bool,
  /**
     * Use to choose the order in which our chart colors are assigned to your data. Unspecified colors will be chosen after the ones you've provided here,
     * so you don't need to provide a complete list of all possible colors.
     * Please read the documentation for guidance on color usage.
     */
  colorList?: array<chartColor>,
  /** @deprecated use colorList instead */
  colors?: array<chartColor>,
}

type props = {
  ...General.baseComponentProps,
  /**
     * The data used to render the chart. You can optionally provide configuration options.
     */
  data: data,
  /**
     * The configuration for the axes of the chart.
     */
  axes: chartAxisPair,
  /**
     * Configuration options for the chart as a whole.
     */
  options?: chartOptions,
}
