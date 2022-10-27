const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      fontFamily: {
        'montserrat': ['Montserrat', 'sans-serif'],
        'josefin-sans': ['josefin-sans', 'sans-serif'],
      },
      colors: {
        'Dark-Black': ['#121212'],
        'Blue-Black': ['#232231'],
        'Blue-Light': ['#81B8BF'],
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
  screens: {
    'mini': '10px',
  },
};
