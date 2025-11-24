module CrmPropertyList = CrmPropertyList

type useAssociationsRequest = {
  toObjectType: string,
  properties?: array<string>,
  pageLength?: int,
}

type date = {
  format?: string,
  relative?: bool,
}

type currency = {addSymbol?: bool}

type formattingOptions = {
  date?: date,
  dateTime?: date,
  currency?: currency,
}

@unboxed
type propertiesToFormat = | @as("all") All | List(array<string>)

type useAssociationsOptions = {
  propertiesToFormat?: propertiesToFormat,
  formattingOptions?: formattingOptions,
}

type associationType = {
  category: string,
  typeId: int,
  label: string,
}

type associationResult<'props> = {
  toObjectId: int,
  associationTypes: array<associationType>,
  properties: 'props,
}

type useAssociationsPagination = {
  hasNextPage: bool,
  hasPreviousPage: bool,
  currentPage: int,
  pageSize: int,
  nextPage: unit => unit,
  previousPage: unit => unit,
  reset: unit => unit,
}

type useAssociationsResult<'props> = {
  results: array<associationResult<'props>>,
  error: Nullable.t<Core__Error.t>,
  isLoading: bool,
  pagination: useAssociationsPagination,
}

@module("@hubspot/ui-extensions/crm")
external useAssociations: (
  ~config: useAssociationsRequest,
  ~options: useAssociationsOptions=?,
) => useAssociationsResult<'props> = "useAssociations"

type fetchCrmPropertiesOptions = {
  propertiesToFormat?: propertiesToFormat,
  formattingOptions?: formattingOptions,
}

type crmPropertiesState<'props> = {
  properties: 'props,
  error: Nullable.t<Core__Error.t>,
  isLoading: bool,
}

@module("@hubspot/ui-extensions/crm")
external useCrmProperties: (
  ~propertyNames: array<string>,
  ~options: fetchCrmPropertiesOptions=?,
) => crmPropertiesState<'props> = "useCrmProperties"
