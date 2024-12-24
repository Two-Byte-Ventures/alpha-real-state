import Image from "next/image";
import { useTranslations } from "@/app/hooks/use-translations";

export const Card = ({ type }) => {
  const { t } = useTranslations();

  return (
    <div className="flex flex-col shadow-lg border w-[250px] h-[150px] rounded-lg background-white shadow-violet-100">
      {/* The reason why we use style is because tailwind does not process dynamic
      paths for image URLs, thus the image won´t ever be displayed.
      
      The way to "fix" this is by using the CSS style property directly rather
      than Tailwind.

      For some reason Next.js was not properly centering the images on the space
      allocated to it. Thus we use this trick with Tailwind and CSS.
      */}
      <div
        className={`flex-grow bg-cover bg-center rounded-t-lg`}
        style={{ backgroundImage: `url('/types/${type}_bg.jpg')` }}
      ></div>

      <div className="bg-white items-center xs:py-0 md:py-1 lg:py-2 flex justify-center z-10 rounded-b-lg text-sm md:text-base lg:text-xl">
        <Image
          src={`/types/${type}.jpg`}
          width="25"
          height="25"
          alt={t(`types.${type}`)}
          title={t(`types.${type}`)}
          className="xs:mr-1 sm:mr-2 md:mr-3 lg:mr-4"
        />
        {t(`types.${type}`)}
      </div>
    </div>
  );
};
