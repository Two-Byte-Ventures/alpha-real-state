import Link from "next/link";
import { Card } from "@/app/_components/Card";
import { useTranslations } from "@/app/hooks/use-translations";

export default function Page() {
  const { t } = useTranslations();
  const cardTypes = ["industrial", "commercial", "residential"];

  return (
    <div className="grid grid-rows-[auto_auto_1fr_1fr] grid-cols-3 justify-items-center items-center h-full w-full">
      <h1 className="text-4xl md:text-5xl lg:text-6xl my-8 md:my-14 lg:my-24 col-span-full text-center font-serif">
        {t("landing.title")}{" "}
        <b className="text-violet-600">{t("landing.highlight")}</b>
      </h1>

      <p className="col-span-full my-6 text-base md:text-xl lg:text-3xl font-bold bg-white rounded-lg p-1 sm:p-1 md:p-2 lg:p-3 border">
        {t("types.title")}
      </p>

      <section className="col-span-full flex flex-col space-y-6 self-center md:space-x-18 md:space-y-12 lg:flex-row lg:space-x-36 lg:space-y-0">
        {cardTypes.map((type) => (
          <Card type={type} key={type} />
        ))}
      </section>

      <Link className="col-span-full self-start my-12" href="/map">
        <button className="bg-black text-white w-[200px] h-[45px] rounded-xl text-xs sm:text-sm md:text-base lg:text-lg hover:bg-zinc-700 hover:shadow-2xl">
          {t("shared.start")}
        </button>
      </Link>
    </div>
  );
}
