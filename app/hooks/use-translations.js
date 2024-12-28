"use client";
import { useAppContext } from "@/app/providers/app-provider";

export const useTranslations = () => {
    const { TranslationService } = useAppContext();
    return {
        t: TranslationService.t,
        setLocale: TranslationService.setLocale,
    }
}