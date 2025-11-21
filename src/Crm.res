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

type associationResult = {
  toObjectId: int,
  associationTypes: array<associationType>,
  properties: Js.Dict.t<option<string>>,
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

type useAssociationsResult = {
  results: array<associationResult>,
  error: option<Core__Error.t>,
  isLoading: bool,
  pagination: useAssociationsPagination,
}

@module("@hubspot/ui-extensions/crm")
external useAssociations: (
  ~config: useAssociationsRequest,
  ~options: useAssociationsOptions=?,
) => useAssociationsResult = "useAssociations"
