import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static values = {
    unread: String
  }
  static targets = ['read', 'none', "notifications"]
  connect() {
    if(this.unreadValue > 0){
      this.readTarget.classList.remove("hidden")
      this.noneTarget.classList.add("hidden")
    }else{
      this.noneTarget.classList.remove("hidden")
      this.readTarget.classList.add("hidden")
    }
  }

  notificationsTargetConnected(element) {
    this.readTarget.classList.remove("hidden")
    this.noneTarget.classList.add("hidden")
  }
  notificationsTargetDisconnected(element) {
    this.noneTarget.classList.remove("hidden")
    this.readTarget.classList.add("hidden")
  }
}
