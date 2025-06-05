"use client";
import { useRef, useMemo, useState, useCallback } from "react";
import bbox from "@turf/bbox";

import "mapbox-gl/dist/mapbox-gl.css";
import Map, { Source, Layer } from "react-map-gl";
import states from "@/geojson/states.json";
import municipalities from "@/geojson/municipalities.json";
import db from "@/housingdb/housing.json";
import Script from "next/script";
import StateMunicipalityPopover from "./StateMunicipalityPopover"; // Added
import MarkerPopover from "./MarkerPopover"; // Added

export default function Page() {
  const mapRef = useRef();
  const [isMapLoaded, setIsMapLoaded] = useState(false);
  const [clickedFeatureInfo, setClickedFeatureInfo] = useState(null); // Added

  // Coordinates for the popovers
  const isMobile = useMemo(() => {
    if (process?.browser) return window.innerWidth < 768;
    return false;
  }, []);

  const popoverPlacement = useMemo(() => { // Added for consistent placement logic
    return isMobile ? "top" : "right-end";
  }, [isMobile]);

  const mapboxToken = useMemo(() => {
    if (process.env.NEXT_PUBLIC_MAPBOX_ENABLE == "true") {
      return process.env.NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN;
    }
    return "";
  }, []);

  const onLoadHandler = useCallback(() => {
    setIsMapLoaded(true);
  }, []);

  const onDblClickHandler = useCallback(
    (event) => {
      setClickedFeatureInfo(null); // Close popover on double click
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

        // pitch the map after zooming
        setTimeout(() => {
          mapRef.current.easeTo({ pitch: 45 });
        }, duration);
      } else {
        // reset the pitch if clicked on empty space
        mapRef.current.easeTo({ pitch: 0 });
      }
    },
    [] // Removed housingMouseOver, locationMouseOver from dependencies
  );

  // Added onClickHandler for popovers
  const onClickHandler = useCallback((event) => {
    const { features, point: { x, y } } = event;
    const topFeature = features && features[0];

    // Prevents popover from opening when map is moving (e.g., after a drag)
    if (mapRef.current?.isMoving() || mapRef.current?.isZooming() || mapRef.current?.isRotating()) {
        return;
    }

    if (topFeature) {
      const layerId = topFeature.layer.id;
      let currentFeatureProperties = { ...topFeature.properties }; // Create a copy

      if (layerId === 'markers') {
        try {
          // Ensure properties are parsed, provide defaults if parsing fails or properties are missing
          const assets = topFeature.properties.assets ? JSON.parse(topFeature.properties.assets) : {};
          const coordinates = topFeature.properties.coordinates ? JSON.parse(topFeature.properties.coordinates) : [];
          currentFeatureProperties = {
            ...topFeature.properties,
            assets,
            coordinates,
          };
        } catch (e) {
          console.error("Failed to parse marker properties:", e);
          // currentFeatureProperties remains a copy of original properties if parsing fails
        }
      }
      const newClickedFeatureData = { ...topFeature, properties: currentFeatureProperties };

      let isSameFeatureClicked = false;
      if (clickedFeatureInfo && clickedFeatureInfo.layerId === layerId) {
        const prevProps = clickedFeatureInfo.feature.properties;
        const currentProps = newClickedFeatureData.properties;
        // Compare based on unique identifiers if available
        if (layerId === 'markers' && prevProps.name === currentProps.name) { // Assuming 'name' is a unique ID for markers
          isSameFeatureClicked = true;
        } else if (layerId === 'states' && prevProps.state_name === currentProps.state_name) {
          isSameFeatureClicked = true;
        } else if (layerId === 'municipalities' && prevProps.mun_name === currentProps.mun_name) {
          isSameFeatureClicked = true;
        }
      }

      if (isSameFeatureClicked) {
        setClickedFeatureInfo(null); // Toggle off if same feature is clicked
      } else {
        setClickedFeatureInfo({ feature: newClickedFeatureData, x, y, layerId }); // Set new feature or switch to it
      }
    } else {
      // Clicked on map background
      setClickedFeatureInfo(null);
    }
  }, [clickedFeatureInfo]); // Dependency: clickedFeatureInfo

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
      onClick={onClickHandler} // Added onClick handler
      onDblClick={onDblClickHandler}
      doubleClickZoom={false}
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

      <StateMunicipalityPopover
        clickedFeatureInfo={clickedFeatureInfo}
        popoverPlacement={popoverPlacement}
      />

      <MarkerPopover
        clickedFeatureInfo={clickedFeatureInfo}
        popoverPlacement={popoverPlacement}
      />

      <Script
        src="https://product-gallery.cloudinary.com/latest/all.js"
        type="text/javascript"
      />
    </Map>
  );
}
