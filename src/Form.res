module FormSubmitExtensionEvent = (
  Params: {
    type v
  },
) => {
  type t = {targetValue: Params.v}

  external make: (~value: Params.v, ~event: Dom.event) => t = "FormSubmitExtensionEvent"
}

@unboxed
type inputValue = String(string) | Number(float)

type formInputValues = Js.Dict.t<inputValue>

type autoComplete = [#off | #on]

module SubT = {
  type v = formInputValues
}

module SubmitT = FormSubmitExtensionEvent(SubT)

/**
 * The props type for {@link !components.Form}.
 *
 * @category Component Props
 */
type props = {
  ...General.baseComponentProps,
  /**
     * Sets the content that will render inside the component. This prop is passed implicitly by providing sub-components.
     *
     */
  children: React.element,
  /**
     * The function that is called when the form is submitted. It will receive a FormSubmitExtensionEvent as an argument and its return value will be ignored. This function should be used instead of Button's `onClick` for the Form's submit button.
     *
     * @event
     */
  onSubmit?: Reactions.reactionsHandler<SubmitT.t>,
  /** @deprecated the value for `preventDefault` is now always `true`, use `onSubmit` to handle all form submission behavior */
  preventDefault?: bool,
  /**
     * Specifies how autcomplete behaves in the entire form.
     * @defaultValue `"on"`
     */
  autoComplete?: autoComplete,
}

@module("@hubspot/ui-extensions")
external make: props => React.element = "Alert"
