import { Controller } from "@hotwired/stimulus";


// Connects to data-controller="home"
export default class extends Controller {

  static targets = ["fade","button","bar"];


  connect() {
    this.fadeTargets.forEach((el, index) => {
      setTimeout(() => {
        el.classList.add("opacity-100", "translate-y-0");
      }, index * 200); // Retraso progresivo para efecto en cascada
    });
  
    setTimeout(() => {
      this.buttonTarget.classList.add("animate-scale");
    }, 300);
    
    setTimeout(() => {
      this.barTarget.classList.add("animate-loading-bar");
    }, 300);
  
  }
}
