/** @ignore */
type panelAction = (~panelId: string) => unit
/** @ignore */
type modalAction = (~modalId: string) => unit
/** @ignore */
type reactions = {
  openPanel: panelAction,
  closePanel: panelAction,
  openModal: modalAction,
  closeModal: modalAction,
}

type retVal = Void(unit) | Promise(Promise.t<unit>)

type reactionsHandler<'T> = (~event: 'T, ~reactions: reactions) => retVal
