"use client";
import { useEffect, useRef } from "react";
import {
  Popover,
  PopoverTrigger,
  PopoverContent,
  Button,
  Divider,
} from "@nextui-org/react";

import { Card, CardHeader, CardBody, CardFooter } from "@nextui-org/card";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import CallToAction from "../_components/CallToAction";
import HousePrice from "../_components/HousePrice";
import HouseDetails from "../_components/HouseDetails";
import HousingOverview from "../_components/HousingOverview";

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
        {/*  */}
        <Popover placement="bottom">
          <PopoverTrigger>
            <Button className="m-2">State/Province Placeholder</Button>
          </PopoverTrigger>
          <PopoverContent>
            <HousingOverview />
          </PopoverContent>
        </Popover>

        <Popover placement="bottom">
          <PopoverTrigger>
            <Button className="m-2">House Placeholder</Button>
          </PopoverTrigger>

          <PopoverContent>
            <Card isBlurred className="border-none" shadow="none">
              {/*  */}
              <CardHeader className="text-small font-bold">
                <HousePrice price="4,000,000" />
              </CardHeader>

              <Divider />

              <CardBody className="text-tiny">
                <HouseDetails />
              </CardBody>

              <Divider />

              <CardFooter className="text-small">
                <CallToAction />
              </CardFooter>
              {/*  */}
            </Card>
          </PopoverContent>
        </Popover>
      </div>
    </div>
  );
}
