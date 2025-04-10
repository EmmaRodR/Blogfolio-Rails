import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="keep-alive"
export default class extends Controller {
  connect() {
    this.startTimer();
    console.log('KeepAlive conectado');
  }


  startTimer() {
    setTimeout(()=> {
      this.keepSessionAlive(); 
      console.log('KeepAlive ejecutado');

    }, 3 * 60 * 1000);
  }

  keepSessionAlive() {
    window.location.href= "/home";
  }

}
