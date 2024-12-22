import rosetta from 'rosetta';

const i18n = rosetta({
    es: {
        shared:{
            title: 'tusiguientecasa.com',
            start: 'Comenzar',
        }
    },
    en: {
        shared:{
            title: 'tusiguientecasa.com',
            start: 'Start',
        }
    }
});

export const TranslationService = {
    init: function() {
        i18n.locale('es');
    },
    t: i18n.t,
}