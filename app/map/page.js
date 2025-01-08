"use client";
import { useRef, useMemo, useState, useCallback } from "react";
import {
  Popover,
  PopoverTrigger,
  PopoverContent,
  Button,
  Divider,
} from "@nextui-org/react";
import bbox from "@turf/bbox";

import { Card, CardHeader, CardBody, CardFooter } from "@nextui-org/card";
import "mapbox-gl/dist/mapbox-gl.css";
import CallToAction from "../_components/CallToAction";
import HousePrice from "../_components/HousePrice";
import HouseDetails from "../_components/HouseDetails";
import HousingOverview from "../_components/HousingOverview";
import Map, { Source, Layer } from "react-map-gl";
import states from "@/geojson/states.json";
import municipalities from "@/geojson/municipalities.json";
import db from "@/housingdb/housing.json";

export default function Page() {
  const mapRef = useRef();
  const [isMapLoaded, setIsMapLoaded] = useState(false);
  const [hoverInfo, setHoverInfo] = useState(null);

  const mapboxToken = useMemo(() => {
    if (process.env.NEXT_PUBLIC_MAPBOX_ENABLE == "true") {
      return process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
    }
    return "";
  }, []);

  const onLoadHandler = useCallback(() => {
    setIsMapLoaded(true);
  }, []);

  const onMouseEnterHandler = useCallback((event) => {
    const {
      features,
      point: { x, y },
    } = event;

    const hoveredFeature = features && features[0];

    if (["states", "municipalities"].includes(hoveredFeature?.layer?.id)) {
      setHoverInfo(hoveredFeature && { feature: hoveredFeature, x, y });
    }
  }, []);

  const onMouseLeaveHandler = useCallback(() => {
    setHoverInfo(null);
  }, []);

  const onClickHandler = useCallback((event) => {
    const feature = event.features[0];
    if (feature) {
      // calculate the bounding box of the feature
      const [minLng, minLat, maxLng, maxLat] = bbox(feature);

      mapRef.current.fitBounds(
        [
          [minLng, minLat],
          [maxLng, maxLat],
        ],
        { duration: 1000 }
      );

      // pitch the map after zooming
      setTimeout(() => {
        mapRef.current.easeTo({ pitch: 45 });
      }, 1000);
    } else {
      // reset the pitch if clicked on empty space
      mapRef.current.easeTo({ pitch: 0 });
    }
  }, []);

  // We use a 3 step process to validate the data retrieved from our
  // database to verify its correctness and avoid any potential security
  // issue

  // 1. Get the state and municipality names from the GeoJSON database
  const allStateNames = states["features"].map(
    (state) => state["properties"]["state_name"]
  );
  const allMunNames = municipalities["features"].map(
    (mun) => mun["properties"]["mun_name"]
  );

  // 2. Read the housing data base, get the state names
  const dbStateNames = db["housingList"].map((house) => house["state_name"]);
  const dbMunNames = db["housingList"].map((house) => house["mun_name"]);

  // 3. Check against the GeoJSON list.
  //    We could directly pass the variable toBeDisplayed to our map
  //    filter but we want to perform one last check to avoid
  //    any malicious string retrieved from the data base
  const filteredStateNames = allStateNames.filter((state) =>
    dbStateNames.includes(state)
  );

  const filteredMunNames = allMunNames.filter((municipality) =>
    dbMunNames.includes(municipality)
  );

  return (
    <Map
      ref={mapRef}
      className="w-full h-screen flex justify-center items-center relative"
      mapboxAccessToken={mapboxToken}
      initialViewState={{
        longitude: -100.668,
        latitude: 23.42,
        zoom: 4.8,
      }}
      minZoom={4}
      mapStyle={process.env.NEXT_PUBLIC_MAPBOX_GL_STYLE_URL}
      onLoad={onLoadHandler}
      interactiveLayerIds={["states", "municipalities"]}
      onMouseMove={onMouseEnterHandler}
      onMouseLeave={onMouseLeaveHandler}
      onClick={onClickHandler}
    >
      {isMapLoaded && [
        <Source key="statesSource" type="geojson" data={states}>
          <Layer
            id="states"
            type="fill"
            paint={{
              "fill-color": "#3bac35",
              "fill-opacity": {
                stops: [
                  [5, 0.5],
                  [7, 0.25],
                  [10, 0.05],
                ],
              },
            }}
            filter={["in", "state_name", ...filteredStateNames]}
          />
          <Layer
            id="states-line"
            type="line"
            paint={{
              "line-color": "#277916",
              "line-width": 2,
              "line-opacity": 0.5,
            }}
            filter={["in", "state_name", ...filteredStateNames]}
          />
        </Source>,
        <Source key="municipalitiesSource" type="geojson" data={municipalities}>
          <Layer
            id="municipalities"
            type="fill"
            paint={{
              "fill-color": "#3bac35",
              "fill-opacity": {
                stops: [
                  [5, 0],
                  [10, 0.5],
                  [12, 0.05],
                ],
              },
            }}
            filter={["in", "mun_name", ...filteredMunNames]}
          />
          <Layer
            id="municipalities-line"
            type="line"
            paint={{
              "line-color": "#277916",
              "line-width": 2,
              "line-opacity": {
                stops: [
                  [5, 0],
                  [10, 0.5],
                ],
              },
            }}
            filter={["in", "mun_name", ...filteredMunNames]}
          />
        </Source>,
      ]}

      {hoverInfo && (
        <Popover placement="bottom" isOpen={true}>
          <PopoverTrigger>
            <div
              style={{
                position: "absolute",
                left: hoverInfo.x,
                top: hoverInfo.y,
              }}
            />
          </PopoverTrigger>
          <PopoverContent>
            <HousingOverview
              stateName={hoverInfo?.feature?.properties?.state_name}
              munName={hoverInfo?.feature?.properties?.mun_name}
            />
          </PopoverContent>
        </Popover>
      )}

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
              <HouseDetails />
            </CardBody>

            <Divider />

            <CardFooter className="text-small">
              <CallToAction />
            </CardFooter>
          </Card>
        </PopoverContent>
      </Popover>
    </Map>
  );
}
