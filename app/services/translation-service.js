import rosetta from 'rosetta';

const i18n = rosetta({
    es: {
        shared:{
            title: 'Tu siguiente casa',
            start: 'Comenzar',
        }
    },
    en: {
        shared:{
            title: 'Tu siguiente casa',
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