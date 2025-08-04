import { Application } from '@hotwired/stimulus'

import * as shadcnPhlexcomponentsControllers from '../../../vendor/shadcn_phlexcomponents/javascript/shadcn_phlexcomponents'
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

Object.keys(shadcnPhlexcomponentsControllers).forEach((controllerName) => {
  const controller = shadcnPhlexcomponentsControllers[controllerName]
  application.register(controller.name, controller)
})

export { application }
