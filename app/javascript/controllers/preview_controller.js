import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preview"
export default class extends Controller {
  static targets = ["input", "dummy", "preview"]

  connect(){
    console.log("Hello!", this.element)
  }
  preview() {
    const acceptedImageTypes = ['image/gif', 'image/jpeg', 'image/png', 'image/heic'];

    let input = this.inputTarget;
    let preview = this.previewTarget;
    let dummy = this.dummyTarget
    let file = input.files[0];
    let reader = new FileReader();

    reader.onloadend = function () {
      preview.src = reader.result;
    };

    if (file && acceptedImageTypes.includes(file['type'])) {
      dummy.style.display = "none"
      preview.style.display = "flex"
      reader.readAsDataURL(file);
    } else {
      console.log("Not an image file!")
    }
  }
}