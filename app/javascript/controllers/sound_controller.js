import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="sound"
export default class extends Controller {

  static values = {sound: String};

  play() {
    const audio = new Audio(this.soundValue);
    audio.play();
  }

  connect() {
    console.log("SoundController conectado, sonido:", this.soundValue);
  }

}
