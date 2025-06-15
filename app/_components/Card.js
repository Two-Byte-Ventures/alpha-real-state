"use client";
import { useTranslations } from "@/app/hooks/use-translations";
import { useEffect, useState } from "react";
import { House, Industrial, Plaza } from "@/app/_components/Icons";



export const Card = ({ type }) => {
  const [isClient, setIsClient] = useState(false);
  const { t } = useTranslations();

  useEffect(() => setIsClient(true), []);

  return (
    <div className="flex flex-col shadow-lg border w-[300px] h-[200px] rounded-lg background-white shadow-violet-100 hover:shadow-violet-300 hover:shadow-2xl hover:border-purple-100">
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

      <div className="bg-white items-center py-2 md:py-3 lg:py-4 flex justify-center z-10 rounded-b-lg text-base md:text-lg lg:text-xl">
        {type==="plaza" && <Plaza className="xs:mr-1 sm:mr-2 md:mr-3 lg:mr-4"/>}
        {type==="house" && <House className="xs:mr-1 sm:mr-2 md:mr-3 lg:mr-4"/>}
        {type==="industrial" && <Industrial className="xs:mr-1 sm:mr-2 md:mr-3 lg:mr-4"/>}
        <span className="pl-1">{isClient && t(`types.${type}`)}</span>
      </div>
    </div>
  );
};
