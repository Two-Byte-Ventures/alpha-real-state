"use client";
import { useEffect, useRef } from "react";
import {
  Image,
  Popover,
  PopoverTrigger,
  PopoverContent,
  Button,
  Divider,
} from "@nextui-org/react";
import NextImage from "next/image";
import { Card, CardHeader, CardBody, CardFooter } from "@nextui-org/card";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

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
                <div className="flex font-sans justify-between items-center flex-grow">
                  <h1 className="text-3xl font-serif justify-self-start">
                    $4,000,000
                  </h1>
                  <div className="ml-4 flex items-center justify-self-end gap-x-1">
                    <p>MXN</p>
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
                        d="M9.879 7.519c1.171-1.025 3.071-1.025 4.242 0 1.172 1.025 1.172 2.687 0 3.712-.203.179-.43.326-.67.442-.745.361-1.45.999-1.45 1.827v.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Zm-9 5.25h.008v.008H12v-.008Z"
                      />
                    </svg>
                  </div>
                </div>
              </CardHeader>
              <Divider />
              <CardBody className="text-tiny">Popover content</CardBody>
              <Divider />
              <CardFooter className="text-small">
                <Image
                  alt="Media"
                  as={NextImage}
                  height={40}
                  width={47}
                  src="/actions/media.png"
                />
                <Image
                  alt="Brochure"
                  as={NextImage}
                  height={49}
                  width={57}
                  src="/actions/brochure.png"
                />
                <Image
                  alt="Map"
                  as={NextImage}
                  height={40}
                  width={35}
                  src="/actions/map.png"
                />
                <Image
                  alt="WhatsApp"
                  as={NextImage}
                  height={34}
                  width={36}
                  src="/actions/whatsapp.png"
                />
              </CardFooter>
            </Card>
          </PopoverContent>
        </Popover>
      </div>
    </div>
  );
}
