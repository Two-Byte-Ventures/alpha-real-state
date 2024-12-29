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
                <div className="flex flex-grow justify-around">
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
                      d="m2.25 15.75 5.159-5.159a2.25 2.25 0 0 1 3.182 0l5.159 5.159m-1.5-1.5 1.409-1.409a2.25 2.25 0 0 1 3.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 0 0 1.5-1.5V6a1.5 1.5 0 0 0-1.5-1.5H3.75A1.5 1.5 0 0 0 2.25 6v12a1.5 1.5 0 0 0 1.5 1.5Zm10.5-11.25h.008v.008h-.008V8.25Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"
                    />
                  </svg>

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
                      d="M9 6.75V15m6-6v8.25m.503 3.498 4.875-2.437c.381-.19.622-.58.622-1.006V4.82c0-.836-.88-1.38-1.628-1.006l-3.869 1.934c-.317.159-.69.159-1.006 0L9.503 3.252a1.125 1.125 0 0 0-1.006 0L3.622 5.689C3.24 5.88 3 6.27 3 6.695V19.18c0 .836.88 1.38 1.628 1.006l3.869-1.934c.317-.159.69-.159 1.006 0l4.994 2.497c.317.158.69.158 1.006 0Z"
                    />
                  </svg>

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
                      d="M15 10.5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"
                    />
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1 1 15 0Z"
                    />
                  </svg>

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
                      d="M7.217 10.907a2.25 2.25 0 1 0 0 2.186m0-2.186c.18.324.283.696.283 1.093s-.103.77-.283 1.093m0-2.186 9.566-5.314m-9.566 7.5 9.566 5.314m0 0a2.25 2.25 0 1 0 3.935 2.186 2.25 2.25 0 0 0-3.935-2.186Zm0-12.814a2.25 2.25 0 1 0 3.933-2.185 2.25 2.25 0 0 0-3.933 2.185Z"
                    />
                  </svg>
                </div>
              </CardFooter>
            </Card>
          </PopoverContent>
        </Popover>
      </div>
    </div>
  );
}
