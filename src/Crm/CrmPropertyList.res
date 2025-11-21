type p = {
  ...General.baseComponentProps,
  properties: array<string>,
  direction?: string,
  objectTypeId?: string,
  objectId?: int,
}

@module("@hubspot/ui-extensions/crm") @react.component(: p)
external make: p => React.element = "CrmPropertyList"
