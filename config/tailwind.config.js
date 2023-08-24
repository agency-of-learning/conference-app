const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './vendor/javascript/tailwindcss-stimulus-components.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['Acumin-Variable-Concept', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        primary: "#CC0000", //rails red
        secondary: {
          DEFAULT: "#3B1D62",
          50: "#F0EDF3",
          100: "#A386FF",
        },
        danger: "#FF654C", // orange
      },
      
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
