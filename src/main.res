@genType.import(("@hubspot/ui-extensions/shared/types/shared.synced.d.ts", "HubSpotReactComponent"))
type hubSpotReactComponent<'a>

module Text = {
  type textProps = {
    ...JsxDOM.domProps,
  }

  @module("@hubspot/ui-extensions") @react.component(: textProps)
  external make: textProps => React.element = "Text"
}

module Flex = {
  @genType.import(("@hubspot/ui-extensions/types/components/layouts.synced.d.ts", "FlexProps"))
  type flexProps

  type propsT = {children: JsxDOM.domProps}

  @module("@hubspot/ui-extensions") @react.component(: propsT)
  external make: propsT => React.element = "Flex"
}

type myFuncParams = {text: string}

@tag("name")
type serverlessRunnerParams = | @as("myFunc") MyFunc({parameters: myFuncParams})

@tag("status")
type serverlessExecutionStatus =
  | @as("SUCCESS") Success({response: unknown}) | @as("ERROR") Error({message: string})

type serverlessFuncRunner = serverlessRunnerParams => promise<serverlessExecutionStatus>
