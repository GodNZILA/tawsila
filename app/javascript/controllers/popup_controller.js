import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets=["popupa", "popupr"]
  connect() {
    console.log("connected")
  }
  accepte(e){
  e.preventDefault()
    this.popupaTarget.classList.remove("d-none")
    document.getElementById("booking_statut").value = "Accepté";
  }
  refuse(e){
    e.preventDefault()
    this.popuprTarget.classList.remove("d-none")
    document.getElementById("booking_statut").value = "Refusé";
  }
  close(e){
    e.preventDefault()
    this.popuprTarget.classList.add("d-none")
    this.popupaTarget.classList.add("d-none")
  }
}
