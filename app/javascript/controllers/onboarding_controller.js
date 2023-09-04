import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="onboarding"
export default class extends Controller {
  static targets = ["image", "icon"]
  upload(){
    this.iconTarget.style["filter"] = "drop-shadow(5px 8px 10px #A386FF)";
  }
}