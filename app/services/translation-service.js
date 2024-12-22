import rosetta from 'rosetta';

const i18n = rosetta({
    es: {
        shared:{
            title: 'tusiguientecasa.com',
            start: 'Comenzar',
        },
        landing:{
            title: 'Encuentra tu siguiente mejor',
            highlight: 'inversión',
        },
        types:{
            title: 'Tipos de Inversión',
            industrial: 'Nave Industrial',
            commercial: 'Plaza Comercial',
            residential: 'Casa Residencial',
        }
    },
    en: {
        shared:{
            title: 'tusiguientecasa.com',
            start: 'Start',
        },
        landing:{
            title: 'Find your next best',
            highlight: 'investment',
        },
        types:{
            title: 'Investment Types',
            industrial: 'Industrial Warehouse',
            commercial: 'Commercial Plaza',
            residential: 'Residential House',
        }
    }
});

export const TranslationService = {
    init: function() {
        i18n.locale('es');
    },
    t: i18n.t,
}