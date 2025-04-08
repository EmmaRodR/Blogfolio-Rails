// app/javascript/controllers/application.js
import { Application } from "@hotwired/stimulus";
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";

const application = Application.start();

// Cargar todos los controladores desde la carpeta "controllers"
eagerLoadControllersFrom("controllers", application);

export { application };

