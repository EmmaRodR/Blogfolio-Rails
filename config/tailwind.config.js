/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.{html,erb}',
    './app/**/*.{html,js,erb,css}',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.{css,scss}',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
