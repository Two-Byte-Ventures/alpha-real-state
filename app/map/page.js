"use client";
import Map, { Source, Layer } from "react-map-gl";
import Script from "next/script";
import { useState } from "react";

import StateMunicipalityPopover from "./StateMunicipalityPopover"; // Added
import MarkerPopover from "./MarkerPopover"; // Added
import useMap from "./useMap";
import useSources from "./useSources";
import useMarkers from "./useMarkers";
import PriceFilter from "./PriceFilter"; // Added

export default function Page() {
  const {
    mapRef,
    isMapLoaded,
    clickedFeatureInfo,
    popoverPlacement,
    mapboxToken,
    onLoadHandler,
    onDblClickHandler,
    onClickHandler,
  } = useMap();

  // Initialize priceRange state here
  const [priceRange, setPriceRange] = useState([500000, 50000000]); // Default price range

  const {
    statesGeoJSON,
    municipalitiesGeoJSON,
    filteredStateNames,
    filteredMunNames,
  } = useSources(priceRange); // Pass priceRange to useSources

  const { markers } = useMarkers();

  const handlePriceChange = (newPriceRange) => {
    console.log("Selected price range:", newPriceRange);
    setPriceRange(newPriceRange); // Update priceRange state
    // Add logic to filter markers based on price range
  };

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
        <Source key="statesSource" type="geojson" data={statesGeoJSON}>
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
            filter={["in", "state_name", ...(filteredStateNames??[])]}
          />
          <Layer
            id="states-line"
            type="line"
            paint={{
              "line-color": "#277916",
              "line-width": 2,
              "line-opacity": 0.5,
            }}
            filter={["in", "state_name", ...(filteredStateNames??[])]}
          />
        </Source>,
        <Source key="municipalitiesSource" type="geojson" data={municipalitiesGeoJSON}>
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

      <PriceFilter onPriceChange={handlePriceChange} />

      <Script
        src="https://product-gallery.cloudinary.com/latest/all.js"
        type="text/javascript"
      />
    </Map>
  );
}
