import { useTranslations } from "@/app/hooks/use-translations";

export const Header = () => {
    const { t } = useTranslations();
    return (
        <header>
            <h1>{t('shared.title')}</h1>
        </header>
    )
}