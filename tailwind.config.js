module.exports = {
  content: [
    "./app/**/*.html.erb",
    "./app/helpers/**/*.rb",
    './app/assets/stylesheets/**/*.css',
    "./app/javascript/**/*.js",
  ],
  theme: {
    extend: {
      colors: {
        'dark-blue': '#021345',
        'light-orange': '#E29251',
      },
      textColor: {
        'light-orange': '#E29251',
      },
      fontFamily: {
        literata: 'Literata',
        muli: 'Muli',
      },
      fontWeight: {
        regular: '600',
      },
    },
  },
  plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],
}
