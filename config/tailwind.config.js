
module.exports = {
  darkMode: 'class',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/components/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    colors: {
      transparent: 'transparent',
      background: '#004643',
      headline: '#fffffe',
      paragraph: '#abd1c6',
      button: '#f9bc60',
      button_text: '#001e1d',
      stroke: '#001e1d',
      main: '#e8e4e6',
      highlight: '#f9bc60',
      secondary: '#abd1c6',
      tertiary: '#e16162',
    },
  },
  plugins: [
  ]
}

// https://www.happyhues.co/palettes/10
// https://bgjar.com/