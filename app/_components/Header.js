import Image from "next/image";
import { useTranslations } from "@/app/hooks/use-translations";

export const Header = () => {
  const { t } = useTranslations();
  const title = t("shared.title");
  return (
    <header className="bg-black flex justify-between items-center h-[70px]">
      <div className="w-[80px]">
        <Image
          className="justify-self-center"
          src="/brand/logo.png"
          width="40"
          height="40"
          alt={title}
          title={title}
        />
      </div>
      <h1 className="text-white font-sans text-3xl flex-grow">{title}</h1>
      <div className="flex gap-4 py-2 px-4 mx-4 bg-gray-500 rounded-lg">
        <div className="text-white font-bold">ES | MX</div>
        <Image
          className="border-2 border-gray-800"
          src="/langs/mexico.png"
          width="30"
          height="30"
          alt="mexican flag"
          title="Mexican flag"
        ></Image>
      </div>
    </header>
  );
};
