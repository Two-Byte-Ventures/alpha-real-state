import { useRef, useMemo, useState, useCallback } from "react";
import bbox from "@turf/bbox";

export default function useMap() {
  const mapRef = useRef();
  const [isMapLoaded, setIsMapLoaded] = useState(false);
  const [clickedFeatureInfo, setClickedFeatureInfo] = useState(null);

  const isMobile = useMemo(() => {
    if (typeof window !== "undefined") return window.innerWidth < 768;
    return false;
  }, []);

  const popoverPlacement = useMemo(() => {
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
        let [minLng, minLat, maxLng, maxLat] = bbox(feature);
        let duration = 1000;

        if (layerId === "markers") {
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

        setTimeout(() => {
          mapRef.current.easeTo({ pitch: 45 });
        }, duration);
      } else {
        mapRef.current.easeTo({ pitch: 0 });
      }
    },
    []
  );

  const onClickHandler = useCallback((event) => {
    const { features, point: { x, y } } = event;
    const topFeature = features && features[0];

    if (mapRef.current?.isMoving() || mapRef.current?.isZooming() || mapRef.current?.isRotating()) {
        return;
    }

    if (topFeature) {
      const layerId = topFeature.layer.id;
      let currentFeatureProperties = { ...topFeature.properties };

      if (layerId === 'markers') {
        try {
          const assets = topFeature.properties.assets ? JSON.parse(topFeature.properties.assets) : {};
          const coordinates = topFeature.properties.coordinates ? JSON.parse(topFeature.properties.coordinates) : [];
          currentFeatureProperties = {
            ...topFeature.properties,
            assets,
            coordinates,
          };
        } catch (e) {
          console.error("Failed to parse marker properties:", e);
        }
      }
      const newClickedFeatureData = { ...topFeature, properties: currentFeatureProperties };

      let isSameFeatureClicked = false;
      if (clickedFeatureInfo && clickedFeatureInfo.layerId === layerId) {
        const prevProps = clickedFeatureInfo.feature.properties;
        const currentProps = newClickedFeatureData.properties;
        if (layerId === 'markers' && prevProps.name === currentProps.name) {
          isSameFeatureClicked = true;
        } else if (layerId === 'states' && prevProps.state_name === currentProps.state_name) {
          isSameFeatureClicked = true;
        } else if (layerId === 'municipalities' && prevProps.mun_name === currentProps.mun_name) {
          isSameFeatureClicked = true;
        }
      }

      if (isSameFeatureClicked) {
        setClickedFeatureInfo(null);
      } else {
        setClickedFeatureInfo({ feature: newClickedFeatureData, x, y, layerId });
      }
    } else {
      setClickedFeatureInfo(null);
    }
  }, [clickedFeatureInfo]);

  return {
    mapRef,
    isMapLoaded,
    clickedFeatureInfo,
    popoverPlacement,
    mapboxToken,
    onLoadHandler,
    onDblClickHandler,
    onClickHandler,
    setClickedFeatureInfo
  };
}
