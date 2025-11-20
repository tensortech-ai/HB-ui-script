type size = | ...General.xs | ...General.sm | ...General.md

type accordionProps = {
  ...General.baseComponentProps,
  /**
     * The title text for the accordion.
     *
     */
  title: string,
  /**
     * The main content of the accordion when it opens.
     *
     */
  children: React.element,
  /**
     * Defines default open behavior on page load. When set to `true`, the accordion will be open by default on initial load.
     *
     * @defaultValue `false`
     */
  defaultOpen?: bool,
  /**
     * When set to `true`, the accordion's open state cannot be changed.
     *
     * @defaultValue `false`
     */
  disabled?: bool,
  /**
     * For controlling the accordion's open state programmatically. When set to `true`, the accordion will open. Takes precedence over `defaultOpen`.
     *
     */
  \"open"?: bool,
  /**
     * The size of the accordion title.
     *
     * @defaultValue `"small"`
     */
  size?: size,
  /**
     * A function that will be invoked when the title is clicked. It receives no arguments and its return value is ignored.
     *
     * @event
     */
  onClick?: unit => unit,
}

@module("@hubspot/ui-extensions") @react.component(: accordionProps)
external make: accordionProps => React.element = "Accordion"
