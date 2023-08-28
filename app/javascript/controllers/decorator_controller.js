import { Controller } from "@hotwired/stimulus"
import debounce from "debounce"
// Connects to data-controller="decorator"
export default class extends Controller {
  static targets = ["anchor"]
  connect() {
   console.log(this.anchorTarget)
    this.anchorTarget.addEventListener("click", this.preventD)
  }
  
  initialize(){
    console.log("initializing")
    this.submit = debounce(this.submit.bind(this), 1000)
  }

  preventD(e){
    e.preventDefault();
  }

  disconnect(){
    console.log("disconnected")
  }
  
  submit(){
    console.log("hi")
    this.anchorTarget.removeEventListener("click", this.preventD)
    debugger
    this.anchorTarget.requestSubmit()
  }
}
