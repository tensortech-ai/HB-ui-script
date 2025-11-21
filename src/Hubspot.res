type method = [#GET | #POST | #PUT | #DELETE | #PATCH]

type hubspotFetchOptions<'body> = {
  method?: method,
  timeout?: int,
  body?: 'body,
  headers?: Fetch.Headers.t, // Headers | Record<string, string>,
}

@unboxed
type hubSpotFetchRequestURI = String(string)

type serverlessRunnerParams = {
  /**
     * Names of CRM object properties to be retrieved and supplied to the function as `context.propertiesToSend`
     */
  propertiesToSend?: array<string>,
  /**
     * Additional parameters to be supplied to the function as `context.parameters`
     */
  parameters?: Js.Json.t,
  /**
     * @deprecated Optional payload supplied to the function as `context.event.payload`.
     * Support for this param may be removed in the future. Use `parameters` instead.
     */
  payload?: Js.Json.t,
}

type serverlessFunc<'a> = (string, ~options: serverlessRunnerParams=?) => Promise.t<'a>

@module("@hubspot/ui-extensions")
external serverless: serverlessFunc<'a> = "serverless"

@tag("status")
type serverlessExecutionResult =
  | @as("SUCCESS") Success({response: JSON.t})
  | @as("ERROR") Error({message: string})

type serverlessFuncRunner = serverlessRunnerParams => Promise.t<serverlessRunnerParams>

type fetchFunction<'body> = (
  hubSpotFetchRequestURI,
  ~options: hubspotFetchOptions<'body>=?,
) => Promise.t<Fetch.Response.t>

@module("@hubspot/ui-extensions")
external fetch: fetchFunction<'body> = "fetch"

module ExtensionPointApi = (
  ExtensionPoint: {
    type actions
    type context
  },
) => {
  type t = {
    runServerlessFunction: serverlessFuncRunner,
    actions: ExtensionPoint.actions,
    context: ExtensionPoint.context,
  }

  type hubspot<'resp, 'body> = {
    extend: (~renderExtensionCallback: t) => React.element,
    severless: serverlessFunc<'resp>,
    fetch: fetchFunction<'body>,
  }

  @module("@hubspot/ui-extensions") external hubspot: hubspot<'resp, 'body> = "hubspot"
}
