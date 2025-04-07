import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="work"
export default class extends Controller {

    static targets = ["fade"];

  connect() {
    this.fadeTargets.forEach((el, index) => {
      setTimeout(() => {
        el.classList.remove("opacity-0", "translate-y-10");
        
      }, index * 200); // Retraso progresivo para efecto en cascada
    });  }
}
