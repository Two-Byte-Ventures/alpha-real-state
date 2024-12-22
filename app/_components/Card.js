import Image from "next/image";
import { useTranslations } from "../hooks/use-translations";

export const Card = ({ type }) => {
  const { t } = useTranslations();

  return (
    <div className="flex justify-center items-center shadow-lg border w-[250px] h-[150px] rounded-lg">
      <Image
        src={`/types/${type}.jpg`}
        width="25"
        height="25"
        alt={t(`types.${type}`)}
        title={t(`types.${type}`)}
      />
      {t(`types.${type}`)}
    </div>
  );
};
