import { Controller } from "@hotwired/stimulus"
import debounce from "debounce"
// Connects to data-controller="decorator"
export default class extends Controller {
  static targets = ["anchor", "form"]
  connect() {
   console.log(this.anchorTarget)
  }
  
  initialize(){
    console.log("initializing")
    this.anchorTarget.addEventListener("click", this.preventD)
    this.submit = debounce(this.submit.bind(this), 5000)
  }

  preventD(e){
    e.preventDefault();
  }
  continue(e){
    return true 
  }
  disconnect(){
    console.log("disconnected")
  }
  
  submit(e){
    let element = document.querySelector("body > div:nth-child(2) > div > form:nth-child(1)")
    console.log(element)
    element.requestSubmit(this.anchorTarget)
  }
}
