import Image from "next/image";
import Link from "next/link";
import { Card } from "@/app/_components/Card";
import { useTranslations } from "@/app/hooks/use-translations";

export default function Page() {
  const { t } = useTranslations();
  return (
    <div className="grid grid-rows-[auto_auto_1fr_1fr] grid-cols-3 justify-items-center items-center h-full w-full">
      <h1 className="text-4xl my-24 col-span-full">
        {t("landing.title")}{" "}
        <b className="text-violet-600">{t("landing.highlight")}</b>
      </h1>

      <p className=" col-span-full my-6 text-2xl font-bold ">
        {t("types.title")}
      </p>

      <section className="col-span-full flex self-center space-x-36">
        <Card className="flex justify-center items-center">
          <Image
            src="/types/industrial.jpg"
            width="25"
            height="25"
            alt={t("types.industrial")}
            title={t("types.industrial")}
          />
          {t("types.industrial")}
        </Card>
        <Card className="flex justify-center items-center">
          <Image
            src="/types/comercial.png"
            width="25"
            height="25"
            alt={t("types.commercial")}
            title={t("types.commercial")}
          />
          {t("types.commercial")}
        </Card>
        <Card className="flex justify-center items-center">
          <Image
            src="/types/residential.jpg"
            width="25"
            height="25"
            alt={t("types.residential")}
            title={t("types.residential")}
          />
          {t("types.residential")}
        </Card>
      </section>
      <Link className="col-span-full self-start my-12" href="/map">
        <button className="bg-black text-white w-[200px] h-[45px] rounded-xl text-lg hover:bg-zinc-700 hover:shadow-2xl">
          {t("shared.start")}
        </button>
      </Link>
    </div>
  );
}
