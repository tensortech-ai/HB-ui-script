type flexJustify = [#center | #end | #start | #around | #between]
type flexAlign = [#start | #center | #baseline | #end | #stretch]

type wrap = | @as(true) True | @as(false) False | @as("wrap") Wrap | @as("nowrap") Nowrap

type p = {
  ...General.baseComponentProps,
  /**
     * Sets the spacing between components.
     *
     * @defaultValue `"flush"`
     */
  gap?: General.allDistances,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children?: React.element,
  /**
     * Arranges components `horizontally` or `vertically` by setting the main axis.
     *
     * @defaultValue `"row"`
     */
  direction?: [#row | #column],
  /**
     * Distributes components along the main axis using the available free space.
     *
     * @defaultValue `"start"`
     */
  justify?: flexJustify,
  /**
     * Distributes components along the cross-axis using the available free space.
     *
     * @defaultValue `"stretch"`
     */
  align?: flexAlign,
  /**
     * Overrides Flex's `alignItem` value for this element.
     *
     */
  alignSelf?: flexAlign,
  /**
     * Whether components will wrap instead of trying to fit on one line.
     *
     * @defaultValue `"nowrap"`
     */
  wrap?: wrap,
}

@module("@hubspot/ui-extensions/crm") @react.component(: p)
external make: p => React.element = "Flex"
