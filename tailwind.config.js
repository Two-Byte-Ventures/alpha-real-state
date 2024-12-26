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
  plugins: [ nextui() ],
};
