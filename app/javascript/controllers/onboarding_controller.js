import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="onboarding"
export default class extends Controller {
  static targets = ["image", "icon"]
  upload(){
    this.iconTarget.style["filter"] = "drop-shadow(2px 4px 6px red)";
  }
}