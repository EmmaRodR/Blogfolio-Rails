# 📘 Blogfolio-Rails

Un proyecto de **Blogfolio** simple desarrollado con **Ruby on Rails**, integrando Docker para un entorno de desarrollo portable. Ideal como portafolio personal o blog técnico.

---

## 🧰 Tecnologías utilizadas

- 💎 **Ruby on Rails**
- 🐳 **Docker** + **Kamal**
- 🐘 **PostgreSQL**
- ⚙️ **StimulusJS**
- 📦 **Yarn / Node.js**

---

## 🚀 Instalación y uso local

# 1. Clona el repositorio
git clone https://github.com/EmmaRodR/Blogfolio-Rails.git
cd Blogfolio-Rails

# 2. Copia el archivo de entorno
cp enviroment.env .env

# 3. Construye los contenedores (si usas Docker)
docker-compose up --build

# 4. Instala dependencias
bundle install
yarn install

# 5. Configura la base de datos
rails db:create
rails db:migrate
rails db:seed

# 6. Inicia el servidor
rails s
