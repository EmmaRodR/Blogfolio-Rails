import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  static targets = ["fade"];

  connect() {
    this.fadeTargets.forEach((el, index) => {
      setTimeout(() => {
        el.classList.remove("opacity-0", "translate-y-6");
      }, index * 300); // Retraso progresivo para efecto en cascada
    });  }
}


