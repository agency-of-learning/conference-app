import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="onboarding"
export default class extends Controller {
  static targets = ["image", "icon"]
  connect() {
    console.log("Im here GIRL!")
    if (this.imageTarget.value){
      this.iconTarget.style["filter"] = "drop-shadow(2px 4px 6px red)";
    }
  }

  upload(){
    this.iconTarget.style["filter"] = "drop-shadow(2px 4px 6px red)";
  }
}
