import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preview"
export default class extends Controller {
  static targets = ["input", "dummy", "preview"]

  connect(){
    console.log("Hello!", this.element)
  }
  preview() {
    // TODO: this
    let input = this.inputTarget;
    let preview = this.previewTarget;
    let dummy = this.dummyTarget
    let file = input.files[0];
    let reader = new FileReader();
    console.log(input, preview, file)
    reader.onloadend = function () {
      preview.src = reader.result;
    };

    if (file) {
      dummy.style.display = "none"
      preview.style.display = "flex"
      reader.readAsDataURL(file);
    } else {
      preview.src = "";
    }
  }
}