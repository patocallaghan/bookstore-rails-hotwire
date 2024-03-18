import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="live-edit"
export default class extends Controller {
  static targets = [ "name", "address", "phone", "nameOutput", "addressOutput", "phoneOutput"];

  edit() {
    this.nameOutputTarget.textContent = this.nameTarget.value;
    this.addressOutputTarget.textContent = this.addressTarget.value;
    this.phoneOutputTarget.textContent = this.phoneTarget.value;
  }
}
