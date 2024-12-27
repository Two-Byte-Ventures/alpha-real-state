import { TranslationService } from "../services/translation-service"

export const useTranslations = () => {
    return {
        t: TranslationService.t,
        setLocale: TranslationService.setLocale,
    }
}