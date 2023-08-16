import { Application } from "@hotwired/stimulus"
import { Confetti } from "stimulus-confetti"

application.register('confetti', Confetti)

const application = Application.start()

import { Alert, Autosave, Dropdown, Modal, Tabs, Popover, Toggle, Slideover } from "tailwindcss-stimulus-components"

application.register('alert', Alert);
application.register('autosave', Autosave);
application.register('dropdown', Dropdown);
application.register('modal', Modal);
application.register('tabs', Tabs);
application.register('popover', Popover);
application.register('toggle', Toggle);
application.register('slideover', Slideover);

application.register('confetti', Confetti)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
