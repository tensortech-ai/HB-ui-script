type variant = [#primary | #destructive | #light | #dark]

type props = {
  ...General.baseComponentProps,
  ...General.overlayComponentProps,
  /**
     * Sets the content that will render inside the component.
     *
     */
  children: React.element,
  /**
     * The URL that will be opened on click. Links to pages in the HubSpot account will open in the same tab, while non-HubSpot links will open in a new tab.
     *
     */
  href: General.hrefProp,
  /**
     * The color variation of the link.
     *
     * @defaultValue `"primary"`
     */
  variant?: variant,
  /**
     * A function that will be invoked with the link is clicked.
     *
     * @event
     */
  onClick?: Reactions.reactionsHandler<General.extensionEvent>,
  /**
     * When set to true, `event.preventDefault()` will be invoked before the `onClick` function is called, preventing automatic navigation to the href URL.
     *
     * @defaultValue `false`
     */
  preventDefault?: bool,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "Link"
