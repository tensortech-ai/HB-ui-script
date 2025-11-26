type team = {
  id: int,
  name: string,
  teammates: array<int>,
}

type permission = [#"integrations-management-write"]

type userContext = {
  id: int,
  emails: array<string>,
  email: string,
  firstName: string,
  lastName: string,
  @deprecated("Roles will always be empty. Please use teams instead")
  roles: array<string>,
  teams: array<team>,
  locale?: string,
  permissions: array<permission>,
}
type portalContext = {
  id: int,
  timezone: string,
}

@unboxed
type profileVariableValue = String(string) | Float(float) | Bigint(bigint) | Bool(bool)

type baseContext = {
  user: userContext,
  portal: portalContext,
  variables: Js.Dict.t<profileVariableValue>,
}

type genericContext = {
  ...baseContext,
  location: [#"uie.playground.middle"],
}

module UiePlaygroundMiddle = {
  type actions = {warn: unit => unit}
  type context = genericContext
}

type alertType = option<[#info | #warning | #success | #danger | #tip]>

type addAlertActionParams = {\"type"?: alertType, message: string, title?: string}

type addAlertAction = addAlertActionParams => unit

type reloadPageAction = unit => unit

@unboxed
type properties = List(array<string>) | @as("*") All

type fetchCrmObjectPropertiesAction<'a> = properties => Promise.t<'a>

type openIframeActionPayload = {
  uri: string,
  height: float,
  width: float,
  @deprecated(
    "This property is no longer functional and has no effect. Please avoid using it, as it will be removed in future updates"
  )
  associatedObjectProperties?: array<string>,
  title?: string,
  flush?: bool,
}

type openIframeModalAction = (openIframeActionPayload, unit => unit) => unit

type refreshObjectPropertiesAction = unit => unit

type onCrmPropertiesUpdateActionError = {message: string}

type rec onCrmPropertiesUpdateCallback =
  | AnyCallback(
      (~properties: 'a, ~error: onCrmPropertiesUpdateActionError) => unit,
    ): onCrmPropertiesUpdateCallback

type onCrmPropertiesUpdateAction = (
  ~properties: properties,
  ~callback: onCrmPropertiesUpdateCallback,
) => unit

type crmHostActions<'a> = {
  addAlert: addAlertAction,
  reloadPage: reloadPageAction,
  fetchCrmObjectProperties: fetchCrmObjectPropertiesAction<'a>,
  openIframeModal: openIframeModalAction,
  refreshObjectProperties: refreshObjectPropertiesAction,
  onCrmPropertiesUpdate: onCrmPropertiesUpdateAction,
}

type copyTextToClipboard = (~data: string) => Promise.t<unit>

type closeOverlayAction = (~id: string) => unit

type uiePlatformActions = {
  copyTextToClipboard: copyTextToClipboard,
  closeOverlay: closeOverlayAction,
  reloadPage: reloadPageAction,
  openIframeModal: openIframeModalAction,
}

type crmRecordContext = {
  objectId: int,
  objectTypeId: int,
}

@unboxed
type appId = Number(int) | String(string)

type appContext = {
  appId: appId,
  appName?: string,
  cardTitle?: string,
}

type crmContext = {
  ...baseContext,
  location: [#"crm.record.tab" | #"crm.record.sidebar" | #"crm.preview" | #"helpdesk.sidebar"],
  crm: crmRecordContext,
  extension?: appContext,
}

module CrmRecordTab = {
  type actions<'a> = {
    addAlert: addAlertAction,
    reloadPage: reloadPageAction,
    fetchCrmObjectProperties: fetchCrmObjectPropertiesAction<'a>,
    openIframeModal: openIframeModalAction,
    refreshObjectProperties: refreshObjectPropertiesAction,
    onCrmPropertiesUpdate: onCrmPropertiesUpdateAction,
    copyTextToClipboard: copyTextToClipboard,
    closeOverlay: closeOverlayAction,
  }

  type context = crmContext
}
