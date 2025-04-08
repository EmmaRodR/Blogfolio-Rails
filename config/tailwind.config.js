/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.{html,erb}',
    './app/javascript/**/*.{js,jsx,ts,tsx}',  // Si usas JavaScript/JSX/TSX
    './app/assets/stylesheets/**/*.{css,scss}',    
    './app/helpers/**/*.rb',
    // Si usas SCSS o CSS
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
