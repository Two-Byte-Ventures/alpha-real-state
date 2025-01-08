"use client";
import rosetta from "rosetta";

const i18n = rosetta({
  es: {
    shared: {
      title: "tusiguientecasa.com",
      start: "Comenzar",
    },
    landing: {
      title: "Encuentra tu siguiente mejor",
      highlight: "inversión",
    },
    types: {
      title: "Tipos de Inversión",
      industrial: "Nave Industrial",
      commercial: "Plaza Comercial",
      residential: "Casa Residencial",
    },
  },
  en: {
    shared: {
      title: "tusiguientecasa.com",
      start: "Start",
    },
    landing: {
      title: "Find your next best",
      highlight: "investment",
    },
    types: {
      title: "Investment Types",
      industrial: "Industrial Warehouse",
      commercial: "Commercial Plaza",
      residential: "Residential House",
    },
  },
});

export const TranslationService = {
  init: function () {
    let myLocale;
    if (typeof window !== "undefined")
      myLocale = localStorage.getItem("locale");
    myLocale = myLocale || "es";
    i18n.locale(myLocale);
  },
  t: i18n.t,
  setLocale: (locale) => {
    if (typeof window !== "undefined") localStorage.setItem("locale", locale);
    window.location.reload();
  },
  getLocale: () => i18n.locale(),
};
