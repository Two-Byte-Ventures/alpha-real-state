"use client";
import Image from "next/image";
import Link from "next/link";
import { useTranslations } from "@/app/hooks/use-translations";
import { CurrencyDropdown } from "./CurrencyDropdown";

export const Header = () => {
  const { t } = useTranslations();
  const title = t("shared.title");

  return (
    <header className="bg-black flex px-6 py-4 items-center h-[70px] justify-between">
      <Link href="/" className="flex items-center pr-2 ">
        <Image
          className=" w-[40px] pr-2"
          src="/brand/logo.png"
          width="40"
          height="40"
          alt={title}
          title={title}
        />
        <h1 className="text-white flex-grow font-sans text-xl lg:text-2xl">
          {title}
        </h1>
      </Link>
      <CurrencyDropdown/>
    </header>
  );
};
