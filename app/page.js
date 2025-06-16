"use client";
import { useRouter } from "next/navigation";
import { Button } from "@nextui-org/button";
import { Card } from "@/app/_components/Card";
import { useTranslations } from "@/app/hooks/use-translations";
import { useEffect, useState } from "react";

export default function Page() {
  const [isClient, setIsClient] = useState(false);
  const router = useRouter();
  const { t } = useTranslations();
  const cardTypes = ["industrial", "plaza", "house"];

  const handleClick = () => {
    router.push("/map");
  };

  useEffect(() => setIsClient(true), []);

  return (
    <div className="grid grid-rows-[auto_auto_1fr_1fr] grid-cols-4 justify-items-center items-center h-full w-full">
      <h1 className="text-5xl md:text-6xl lg:text-7xl my-8 md:my-14 lg:my-24 col-span-full text-center font-serif">
        {isClient && t("landing.title")}{" "}
        <b className="text-violet-600">{isClient && t("landing.highlight")}</b>
      </h1>

      <p className="col-span-full my-6 text-xl md:text-2xl lg:text-3xl font-bold bg-white rounded-lg p-1 sm:p-1 md:p-2 lg:p-3 border">
        {isClient && t("types.title")}
      </p>

      <section className="col-span-full flex flex-col space-y-6 self-center md:space-x-18 md:space-y-12 lg:flex-row lg:space-x-36 lg:space-y-0">
        {cardTypes.map((type) => (
          <Card type={type} key={type} />
        ))}
      </section>

      <div className="col-span-full self-start pt-16 pb-16">
        <Button
          size="lg"
          radius="lg"
          className="bg-black text-white w-[200px] text-xs sm:text-sm md:text-base lg:text-lg hover:shadow-2xl"
          onPress={handleClick}
        >
          {isClient && t("shared.start")}
        </Button>
      </div>
      <div className="col-span-full p-2"></div>
    </div>
  );
}
