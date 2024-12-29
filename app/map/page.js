"use client";
import { useEffect, useRef } from "react";
import {
  Image,
  Popover,
  PopoverTrigger,
  PopoverContent,
  Button,
  Divider,
  Accordion,
  AccordionItem,
} from "@nextui-org/react";
import NextImage from "next/image";
import { Card, CardHeader, CardBody, CardFooter } from "@nextui-org/card";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import CallToAction from "../_components/CallToAction";
import HousePrice from "../_components/HousePrice";

export default function Page() {
  const mapRef = useRef();
  const mapContainerRef = useRef();

  const isMapboxSupported =
    mapboxgl.supported() && process.env.NEXT_PUBLIC_MAPBOX_ENABLE == "true";

  useEffect(() => {
    if (!isMapboxSupported) return;

    mapboxgl.accessToken = process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
    mapRef.current = new mapboxgl.Map({
      container: mapContainerRef.current,
      center: [-100.668, 23.42],
      zoom: 5,
      style: process.env.NEXT_PUBLIC_MAPBOX_GL_STYLE_URL,
    });

    return () => {
      mapRef.current.remove();
    };
  }, [isMapboxSupported]);

  return (
    <div className="w-full h-screen flex justify-center items-center">
      <div id="map-container" className="w-full h-full" ref={mapContainerRef}>
        <Popover placement="bottom">
          <PopoverTrigger>
            <Button className="m-2">State/Province Placeholder</Button>
          </PopoverTrigger>
          <PopoverContent>
            <Card isBlurred className="border-none" shadow="none">
              <CardHeader className="text-small font-bold">
                State/Province
              </CardHeader>
              <CardBody className="text-tiny">Popover content</CardBody>
            </Card>
          </PopoverContent>
        </Popover>
        <Popover placement="bottom">
          <PopoverTrigger>
            <Button className="m-2">House Placeholder</Button>
          </PopoverTrigger>
          <PopoverContent>
            <Card isBlurred className="border-none" shadow="none">
              <CardHeader className="text-small font-bold">
                <HousePrice price="4,000,000" />
              </CardHeader>
              <Divider />
              <CardBody className="text-tiny">
                <div className="flex flex-col items-center flex-grow ">
                  <h1 className="font-sans text-xl my-2 text-violet-700 font-bold">
                    Grand House: Casa Harmony
                  </h1>
                  <Image
                    alt="Example house"
                    src="/actions/image.png"
                    className="aspect-auto rounded-none"
                    width={305}
                    height={182}
                  />
                  <div className="mt-4 mb-1 rounded-lg shadow-md border-small ">
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
                            class="size-6"
                          >
                            <path
                              strokeLinecap="round"
                              stroke-linejoin="round"
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
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-6"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"
                            />
                          </svg>

                          <p className="ml-1">Escrituras $90,000</p>
                        </div>
                      </AccordionItem>
                    </Accordion>
                  </div>
                </div>
              </CardBody>
              <Divider />
              <CardFooter className="text-small">
                <CallToAction />
              </CardFooter>
            </Card>
          </PopoverContent>
        </Popover>
      </div>
    </div>
  );
}
