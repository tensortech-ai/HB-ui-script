type emptyStateImageName = [
  | #addOnReporting
  | #announcement
  | #api
  | #automatedTesting
  | #beta
  | #building
  | #callingSetUp
  | #companies
  | #components
  | #cone
  | #contacts
  | #contentStrategy
  | #customObjects
  | #customerExperience
  | #customerSupport
  | #deals
  | #developerSecurityUpdate
  | #electronicSignature
  | #electronicSignatureEmptyState
  | #emailConfirmation
  | #emptyStateCharts
  | #idea
  | #integrations
  | #leads
  | #lock
  | #meetings
  | #missedGoal
  | #multipleObjects
  | #object
  | #productsShoppingCart
  | #registration
  | #sandboxAddOn
  | #social
  | #store
  | #storeDisabled
  | #successfullyConnectedEmail
  | #target
  | #task
  | #tickets
  | #voteAndSearch
]

type layout = [#horizontal | #vertical]
/**
 * The props type for {@link !components.EmptyState}.
 *
 * @category Component Props
 */
type props = {
  ...General.baseComponentProps,
  /**
     * When set to `true`, removes the default vertical margins in the component.
     *
     * @defaultValue `false`
     */
  flush?: bool,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children: React.element,
  /**
     * The text for the title header.
     *
     * @defaultValue `"All is not lost."`
     *
     */
  title?: string,
  /**
     * Sets the layout direction for the content. Can be either `horizontal` or `vertical`.
     *
     * @defaultValue `"horizontal"`
     */
  layout?: layout,
  /**
     * When set to `true`, swaps the visual order of the text (primary) and image (secondary) content. This ensures the primary content is still presented first to assistive technology.
     *
     * @defaultValue `false`
     */
  reverseOrder?: bool,
  /**
     * The max-width(in pixels) for the image container.
     *
     * @defaultValue `250`
     */
  imageWidth?: float,
  /**
     * The name of the image to display.
     *
     * @defaultValue `"emptyStateCharts"`
     */
  imageName?: emptyStateImageName,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "EmptyState"
