import Image from 'next/image';
import { useTranslations } from "@/app/hooks/use-translations";

export const Header = () => {
    const { t } = useTranslations();
    const title = t('shared.title');
    return (
        <header
            className='bg-black flex justify-start items-center flex-grow h-[70px]'
        >
            <div className='w-[80px] flex justify-center'>
                <Image
                    src="/brand/logo.png"
                    width="40" height="40"
                    alt={title}
                    title={title}
                />
            </div>
            <h1 className='text-white font-sans text-3xl'>{title}</h1>
        </header>
    )
}