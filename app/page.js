import Image from "next/image";
import Link from "next/link";
import { Card } from "@/app/_components/Card";
import { useTranslations } from "@/app/hooks/use-translations";

export default function Page() {
  const { t } = useTranslations();
  return (
    <article className="flex flex-col justify-center items-center">
      <header className="h-[300px] flex justify-center items-center">
        <h1 className="text-4xl">{t('landing.title')} <b className="text-violet-600">{t('landing.highlight')}</b></h1>
      </header>
      <p className="h-[100px] text-2xl font-bold">{t('types.types.title')}</p>
      <section className="flex w-full justify-around h-[300px]">
        <Card className="flex justify-center items-center">
          <Image
            src="/types/industrial.jpg"
            width="25" height="25"
            alt={t('types.industrial')}
            title={t('types.industrial')}
          />
          {t('types.industrial')}
        </Card>
        <Card className="flex justify-center items-center">
          <Image
            src="/types/comercial.png"
            width="25" height="25"
            alt={t('types.commercial')}
            title={t('types.commercial')}
          />
          {t('types.commercial')}
        </Card>
        <Card className="flex justify-center items-center">
          <Image
            src="/types/residential.jpg"
            width="25" height="25"
            alt={t('types.residential')}
            title={t('types.residential')}
          />
          {t('types.residential')}
        </Card>
      </section>
      <Link href="/map">
        <button
          className="bg-black text-white w-[200px] h-[45px] rounded-xl text-lg hover:bg-zinc-700 hover:shadow-2xl"
        >
          {t('shared.start')}
        </button>
      </Link>
    </article>
  );
}
