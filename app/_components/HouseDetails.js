"use client";
import { Accordion, AccordionItem } from "@nextui-org/react";
import { useEffect } from "react";

function HouseDetails({ name, tag }) {
  useEffect(() => {
    const photoGallery = cloudinary.galleryWidget({
      container: '#photo-gallery',
      cloudName: `${process.env.NEXT_PUBLIC_CLOUDINARY_APP_NAME}`,
      mediaAssets: [
        { tag: tag, mediaType: 'image'},
      ],
      //carouselStyle: 'none',
      thumbnailProps: {
        navigationShape: "square",
        navigationColor: "#FFFFFF",
        navigationIconColor: "#000000",
        selectedBorderPosition: "all",
        mediaSymbolShape: "square",
        width: 40,
        height: 40,
      },
      carouselLocation: "bottom",
      themeProps: {
        active: '#6d28d9',
        onPrimary: "#ffffff"
      },
      transition: "fade",
      placeholderImage: true,
    });

    setTimeout(() => {
      photoGallery.render();
    }, 500);

  }, []);
  return (
    <div className="flex flex-col justify-between items-center flex-grow">
      <h1 className="font-sans text-2xl mb-3 text-violet-700 font-bold">
        {name}
      </h1>
      <div id="photo-gallery" className="w-[300px] h-[350px] p-0 m-0"/>
      {/**<div className="mt-4 mb-1 rounded-lg shadow-md border-small">
        <div className="flex mx-2 mt-2 flex-grow justify-between items-center">
          <h1 className="justify-self-start font-bold text-medium">
            Esquema 1
          </h1>
          <h1 className="justify-self-end text-green-600 font-bold text-medium">
            12.8%
          </h1>
        </div>
        <Accordion selectionMode="multiple">
          <AccordionItem
            key="1"
            aria-label="Accordion 1"
            title="Enganche $652,800"
          >
            <div className="flex items-center ">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth="1.5"
                stroke="currentColor"
                className="size-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"
                />
              </svg>

              <p className="ml-1">Escrituras $100,000</p>
            </div>
          </AccordionItem>

          <AccordionItem
            key="2"
            aria-label="Accordion 2"
            title="Enganche $402,000"
          >
            <div className="flex items-center ">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth="1.5"
                stroke="currentColor"
                className="size-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"
                />
              </svg>

              <p className="ml-1">Escrituras $90,000</p>
            </div>
          </AccordionItem>
        </Accordion>
      </div>*/}
    </div>
  );
}

export default HouseDetails;
