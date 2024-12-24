import Image from "next/image";
import Link from "next/link";
import { useTranslations } from "@/app/hooks/use-translations";

export const Header = () => {
  const { t } = useTranslations();
  const title = t("shared.title");
  return (
    <header className="bg-black flex px-4 py-4 items-center h-[70px]">
      <Link href="/" className="flex items-center pr-2 ">
        <Image
          className=" w-[40px] pr-2"
          src="/brand/logo.png"
          width="40"
          height="40"
          alt={title}
          title={title}
        />
      </Link>
      <h1 className="text-white flex-grow font-sans text-xs xs:text-sm md:text-lg lg:text-2xl">
        {title}
      </h1>
      <div className=" flex items-center py-1  sm:py-2  mx-4 bg-[rgba(77,77,77,0.5)] rounded-lg">
        <div className="text-white text-xs xs:text-sm sm:text-base font-bold mx-1 sm:mx-2 ">
          ES | MX
        </div>
        <div className="relative">
          <Image
            className=" mx-1 sm:mx-2 border-2  border-gray-800 rounded-md "
            src="/langs/mexico.png"
            width="35"
            height="35"
            alt="mexican flag"
            title="Mexican flag"
          />
        </div>
      </div>
    </header>
  );
};
