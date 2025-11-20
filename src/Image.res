/**
 * The props type for {@link !components.Image}.
 *
 * @category Component Props
 */
type props = {
  ...General.baseComponentProps,
  /**
     * The alt text for the image.
     *
     */
  alt?: string,
  /**
     * If provided, will be used as the href that will be opened in a new browser tab on click.
     *
     */
  href?: General.hrefProp,
  /**
     * A function that will be called when the image is clicked.
     *
     * @event
     */
  onClick?: Reactions.reactionsHandler<General.extensionEvent>,
  /**
     * The URL of the image to display.
     *
     */
  src: string,
  /**
     * The pixel width of the image.
     *
     */
  width?: float,
  /**
     * The pixel height of the image.
     *
     */
  height?: float,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "Image"
