import { Application } from "@hotwired/stimulus"
const application = Application.start()

import * as ActiveStorage from "@rails/activestorage"
ActiveStorage.start()

import { Alert, Autosave, Dropdown, Modal, Tabs, Popover, Toggle, Slideover } from "tailwindcss-stimulus-components"
import { Confetti } from "stimulus-confetti"

application.register('confetti', Confetti)
application.register('alert', Alert);
application.register('autosave', Autosave);
application.register('dropdown', Dropdown);
application.register('modal', Modal);
application.register('tabs', Tabs);
application.register('popover', Popover);
application.register('toggle', Toggle);
application.register('slideover', Slideover);

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
