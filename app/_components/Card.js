import Image from "next/image";
import { useTranslations } from "../hooks/use-translations";

export const Card = ({ type }) => {
  const { t } = useTranslations();

  return (
    <div className="relative flex flex-col justify-end  shadow-lg border w-[250px] h-[150px] rounded-lg background-white">
      <Image
        className="rounded-lg z-0 "
        src={`/types/${type}_bg.jpg`}
        objectFit="cover"
        fill={true}
        alt={t(`types.${type}`)}
      />

      <div className="bg-white py-2 flex justify-center z-10 rounded-b-lg">
        <Image
          src={`/types/${type}.jpg`}
          width="25"
          height="25"
          alt={t(`types.${type}`)}
          title={t(`types.${type}`)}
        />
        {t(`types.${type}`)}
      </div>
    </div>
  );
};
