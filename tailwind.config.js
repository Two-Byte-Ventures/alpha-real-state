const defaultTheme = require("tailwindcss/defaultTheme");
const { nextui } = require("@nextui-org/react");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./node_modules/@nextui-org/theme/dist/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        background: "var(--background)",
        foreground: "var(--foreground)",
      },
      fontFamily: {
        sans: ["Lexend", ...defaultTheme.fontFamily.sans],
        serif: ["Jockey One", ...defaultTheme.fontFamily.serif],
      },
      screens: {
        xs: "480px", // Custom extra small breakpoint
      },
    },
  },
  darkMode: "class",
  plugins: [ 
    nextui({
      themes: {
        light: {
          colors: {
            primary: {
              50: "#f7f7f7",
              100: "#e3e3e3",
              200: "#c8c8c8",
              300: "#a4a4a4",
              400: "#818181",
              500: "#666666",
              600: "#515151",
              700: "#434343",
              800: "#383838",
              900: "#000000",
              DEFAULT: "#000000",
              foreground: "#ffffff",
            },
          },
        },
        dark: {
          colors: {
            primary: {
              50: "#f7f7f7",
              100: "#e3e3e3",
              200: "#c8c8c8",
              300: "#a4a4a4",
              400: "#818181",
              500: "#666666",
              600: "#515151",
              700: "#434343",
              800: "#383838",
              900: "#000000",
              DEFAULT: "#000000",
              foreground: "#ffffff",
            },
          },
        },
      },
    })
  ],
};
