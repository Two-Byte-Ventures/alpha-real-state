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
import CallToAction from "@/app/_components/CallToAction";
import HousePrice from "@/app/_components/HousePrice";
import HouseDetails from "@/app/_components/HouseDetails";
import HousingOverview from "@/app/_components/HousingOverview";
import Map, { Source, Layer } from "react-map-gl";
import states from "@/geojson/states.json";
import municipalities from "@/geojson/municipalities.json";
import db from "@/housingdb/housing.json";
import Script from "next/script";

export default function Page() {
  const mapRef = useRef();
  const [isMapLoaded, setIsMapLoaded] = useState(false);
  const [locationHoverInfo, setLocationHoverInfo] = useState(null);
  const [housingHoverInfo, setHousingHoverInfo] = useState(null);
  const [housingMouseOver, setHousingMouseOver] = useState(false);
  const [locationMouseOver, setLocationMouseOver] = useState(false);

  const mapboxToken = useMemo(() => {
    if (process.env.NEXT_PUBLIC_MAPBOX_ENABLE == "true") {
      return process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
    }
    return "";
  }, []);

  const onLoadHandler = useCallback(() => {
    setIsMapLoaded(true);
  }, []);

  let featureMouseEnterTimer = null;
  let housingMouseEnterTimer = null;
  let locationMouseEnterTimer = null;

  const onMouseEnterHandler = useCallback(
    (event) => {
      const {
        features,
        point: { x, y },
      } = event;

      const hoveredFeature = features && features[0];

      if (!hoveredFeature) return;

      clearTimeout(featureMouseEnterTimer);
      clearTimeout(housingMouseEnterTimer);
      clearTimeout(locationMouseEnterTimer);

      housingMouseEnterTimer = setTimeout(() => {
        if (!housingMouseOver) setHousingHoverInfo(null);
      }, 100);
      locationMouseEnterTimer = setTimeout(() => {
        if (!locationMouseOver) setLocationHoverInfo(null);
      }, 100);

      if (hoveredFeature?.layer?.id === "markers") {
        featureMouseEnterTimer = setTimeout(() => {
          setHousingHoverInfo(
            hoveredFeature && {
              feature: {
                ...hoveredFeature,
                properties: {
                  ...hoveredFeature.properties,
                  assets: JSON.parse(hoveredFeature?.properties?.assets),
                },
              },
              x,
              y,
            }
          );
        }, 250);
      } else if (
        ["states", "municipalities"].includes(hoveredFeature?.layer?.id)
      ) {
        featureMouseEnterTimer = setTimeout(() => {
          setLocationHoverInfo(
            hoveredFeature && { feature: hoveredFeature, x, y }
          );
        }, 250);
      }
      return () => {
        clearTimeout(featureMouseEnterTimer);
        clearTimeout(housingMouseEnterTimer);
        clearTimeout(locationMouseEnterTimer);
      };
    },
    [housingMouseOver, locationMouseOver]
  );

  let housingMouseLeaveTimer = null;
  let locationMouseLeaveTimer = null;

  function clearHoverInfo() {
    onMouseLeaveHandler();
  }

  const onMouseLeaveHandler = useCallback(() => {
    clearTimeout(housingMouseLeaveTimer);
    clearTimeout(locationMouseLeaveTimer);

    housingMouseLeaveTimer = setTimeout(() => {
      if (!housingMouseOver) setHousingHoverInfo(null);
    }, 100);
    locationMouseLeaveTimer = setTimeout(() => {
      if (!locationMouseOver) setLocationHoverInfo(null);
    }, 100);

    return () => {
      clearTimeout(housingMouseLeaveTimer);
      clearTimeout(locationMouseLeaveTimer);
    };
  }, [housingMouseOver, locationMouseOver]);

  const onClickHandler = useCallback(
    (event) => {
      const feature = event.features[0];
      if (feature) {
        const layerId = feature.layer.id;
        // calculate the bounding box of the feature
        let [minLng, minLat, maxLng, maxLat] = bbox(feature);
        let duration = 1000;

        if (layerId === "markers") {
          // add padding to the marker bounding box
          const padding = 0.0025;
          minLng -= padding;
          minLat -= padding;
          maxLng += padding;
          maxLat += padding;
          duration = 2000;
        }

        mapRef.current.fitBounds(
          [
            [minLng, minLat],
            [maxLng, maxLat],
          ],
          { duration }
        );

        // clear the hover info while zooming
        clearHoverInfo();

        // pitch the map after zooming
        setTimeout(() => {
          mapRef.current.easeTo({ pitch: 45 });
        }, duration);
      } else {
        // reset the pitch if clicked on empty space
        mapRef.current.easeTo({ pitch: 0 });
      }
    },
    [housingMouseOver, locationMouseOver]
  );

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
  const markers = {
    type: "FeatureCollection",
    features: db["housingList"].map((house) => ({
      type: "Feature",
      properties: { ...house },
      geometry: {
        coordinates: house["coordinates"],
        type: "Point",
      },
    })),
  };

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
      interactiveLayerIds={["states", "municipalities", "markers"]}
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
        <Source key="markersSource" type="geojson" data={markers}>
          <Layer
            id="markers"
            type="symbol"
            layout={{
              "icon-image": "map-marker",
              "icon-size": {
                stops: [
                  [9, 0],
                  [10, 0.25],
                  [20, 0.35],
                ],
              },
            }}
          />
        </Source>,
      ]}

      <Popover placement="right-end" isOpen={Boolean(locationHoverInfo)}>
        <PopoverTrigger>
          <div
            style={{
              position: "absolute",
              left: locationHoverInfo?.x,
              top: locationHoverInfo?.y,
            }}
          />
        </PopoverTrigger>
        <PopoverContent>
          <HousingOverview
            stateName={locationHoverInfo?.feature?.properties?.state_name}
            munName={locationHoverInfo?.feature?.properties?.mun_name}
            onMouseEnter={() => setLocationMouseOver(true)}
            onMouseLeave={() => setLocationMouseOver(false)}
          />
        </PopoverContent>
      </Popover>

      <Popover placement="right-end" isOpen={Boolean(housingHoverInfo)}>
        <PopoverTrigger>
          <div
            style={{
              position: "absolute",
              left: housingHoverInfo?.x,
              top: housingHoverInfo?.y,
            }}
          />
        </PopoverTrigger>
        <PopoverContent>
          <Card
            isBlurred
            className="border-none"
            shadow="none"
            onMouseEnter={() => {
              setHousingMouseOver(true);
            }}
            onMouseLeave={() => {
              setHousingMouseOver(false);
            }}
          >
            <CardHeader className="text-small font-bold">
              <HousePrice
                price={housingHoverInfo?.feature?.properties?.price}
              />
            </CardHeader>

            <Divider />

            <CardBody className="text-tiny">
              <HouseDetails
                name={housingHoverInfo?.feature?.properties?.name}
                tag={housingHoverInfo?.feature?.properties?.assets?.tag}
              />
            </CardBody>

            <Divider />

            <CardFooter className="text-small">
              <CallToAction />
            </CardFooter>
          </Card>
        </PopoverContent>
      </Popover>

      <Script
        src="https://product-gallery.cloudinary.com/latest/all.js"
        type="text/javascript"
      />
    </Map>
  );
}
