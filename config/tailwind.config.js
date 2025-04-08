/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.{html,erb}',
    './app/javascript/**/*.{js,jsx,ts,tsx}',  // Si usas JavaScript/JSX/TSX
    './app/assets/stylesheets/**/*.{css,scss}',    
    './app/helpers/**/*.rb',
    // Si usas SCSS o CSS
  ],
  safelist: [
    'flex', 'flex-col', 'justify-center', 'items-start', 'gap-4', 'mb-10',
    'flex-row', 'items-center', 'gap-6', 'ml-4',
    'flex-wrap', 'justify-center'
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
