"use client";
import Map, { Source, Layer } from "react-map-gl";
import Script from "next/script";
import { useEffect } from "react";

import StateMunicipalityPopover from "./StateMunicipalityPopover";
import MarkerPopover from "./MarkerPopover";
import useMap from "./useMap";
import useSourcesStore from "../stores/useSourcesStore";
import useMarkers from "./useMarkers";
import UnifiedControls from "./UnifiedControls";

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
    setClickedFeatureInfo,
  } = useMap();

  const {
    statesGeoJSON,
    municipalitiesGeoJSON,
    filteredStateNames,
    filteredMunNames,
    initializeSources,
  } = useSourcesStore();

  const { markers } = useMarkers();

  useEffect(() => {
    initializeSources();
  }, [initializeSources]);

  const handleClosePopover = () => {
    setClickedFeatureInfo(null);
  };

  return (
    <Map
      ref={mapRef}
      className="w-full h-screen flex justify-center items-center relative mapbox-no-attribution"
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
      onClick={onClickHandler}
      onDblClick={onDblClickHandler}
      doubleClickZoom={false}
      attributionControl={false}
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
            filter={["in", "state_name", ...(filteredStateNames ?? [])]}
          />
          <Layer
            id="states-line"
            type="line"
            paint={{
              "line-color": "#277916",
              "line-width": 2,
              "line-opacity": 0.5,
            }}
            filter={["in", "state_name", ...(filteredStateNames ?? [])]}
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
            filter={["in", "mun_name", ...(filteredMunNames ?? [])]}
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
            filter={["in", "mun_name", ...(filteredMunNames ?? [])]}
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
        onClose={handleClosePopover}
      />

      <MarkerPopover
        clickedFeatureInfo={clickedFeatureInfo}
        popoverPlacement={popoverPlacement}
        onClose={handleClosePopover}
      />

      <UnifiedControls />

      <Script
        src="https://product-gallery.cloudinary.com/latest/all.js"
        type="text/javascript"
      />
    </Map>
  );
}
