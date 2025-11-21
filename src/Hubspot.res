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

@module("@hubspot/ui-extensions")
external serverless: (string, ~options: serverlessRunnerParams=?) => Js.promise<'a, 'e> =
  "serverless"

@tag("status")
type serverlessExecutionResult =
  | @as("SUCCESS") Success({response: JSON.t})
  | @as("ERROR") Error({message: string})

type serverlessFuncRunner = serverlessRunnerParams => Promise.t<serverlessRunnerParams>

@module("@hubspot/ui-extensions")
external fetch: (
  hubSpotFetchRequestURI,
  ~options: hubspotFetchOptions<'body>=?,
) => Js.promise<Fetch.Response.t, 'e> = "fetch"

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

  @module("@hubspot/ui-extensions") external hubspot: t = "hubspot"
}
