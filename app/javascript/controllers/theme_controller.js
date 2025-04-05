import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="theme"
export default class extends Controller {
  

  static targets = ["lightIcon","darkIcon"]

  connect() {

    console.log("Theme Controller Conected!")
    const isDark = localStorage.getItem("color-theme") === "dark" || 
                   (!localStorage.getItem("color-theme") && window.matchMedia("(prefers-color-scheme: dark)").matches);

    this.applyTheme(isDark);
  }

  toggleTheme() {
    const isDark = !document.body.classList.contains("dark");
    this.applyTheme(isDark);
    localStorage.setItem("color-theme", isDark ? "dark" : "light");

  }

  applyTheme(isDark) {
    document.body.classList.toggle("dark", isDark);
    this.darkIconTarget.classList.toggle("hidden", isDark);
    this.lightIconTarget.classList.toggle("hidden", !isDark);
  }
}