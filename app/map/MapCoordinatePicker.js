"use client";
import { useState, useRef, useEffect } from "react";
import Map, { Source, Layer } from "react-map-gl";
import { Button } from "@nextui-org/react";
import { Center } from "@/app/_components/Icons";
import { useTranslations } from "@/app/hooks/use-translations";

const MapCoordinatePicker = ({ 
  longitude, 
  latitude, 
  onCoordinatesChange, 
  mapboxToken 
}) => {
  const { t } = useTranslations();
  const mapRef = useRef();
  
  // Default coordinates (Mexico center)
  const defaultCoords = { longitude: -100.668, latitude: 23.42 };
  
  const [markerPosition, setMarkerPosition] = useState(() => {
    const validLng = longitude && !isNaN(longitude) ? longitude : defaultCoords.longitude;
    const validLat = latitude && !isNaN(latitude) ? latitude : defaultCoords.latitude;
    return { longitude: validLng, latitude: validLat };
  });
  
  const [isMapLoaded, setIsMapLoaded] = useState(false);

  // Update marker position when props change
  useEffect(() => {
    if (longitude && latitude && !isNaN(longitude) && !isNaN(latitude)) {
      setMarkerPosition({ longitude, latitude });
    }
  }, [longitude, latitude]);

  const handleMapClick = (event) => {
    const { lng, lat } = event.lngLat;
    console.log('Map clicked at:', { lng, lat });
    
    // Ensure coordinates are valid numbers
    if (isNaN(lng) || isNaN(lat)) {
      console.error('Invalid coordinates received:', { lng, lat });
      return;
    }
    
    const newPosition = {
      longitude: Number(lng.toFixed(6)),
      latitude: Number(lat.toFixed(6))
    };
    
    console.log('Setting marker to:', newPosition);
    setMarkerPosition(newPosition);
    onCoordinatesChange(newPosition);
  };

  const centerMapOnMarker = () => {
    if (mapRef.current && 
        markerPosition.longitude && 
        markerPosition.latitude &&
        !isNaN(markerPosition.longitude) && 
        !isNaN(markerPosition.latitude)) {
      mapRef.current.flyTo({
        center: [markerPosition.longitude, markerPosition.latitude],
        zoom: 12,
        duration: 1000
      });
    }
  };

  const handleMapLoad = () => {
    setIsMapLoaded(true);
    console.log('Map loaded');
  };

  // Create GeoJSON point for the marker
  const markerGeoJSON = {
    type: "FeatureCollection",
    features: [
      {
        type: "Feature",
        geometry: {
          type: "Point",
          coordinates: [markerPosition.longitude, markerPosition.latitude]
        },
        properties: {}
      }
    ]
  };

  return (
    <div className="w-full border border-gray-200 rounded-lg overflow-hidden">
      <div className="relative mapbox-no-attribution">
        <Map
          ref={mapRef}
          style={{ width: "100%", height: "300px" }}
          mapboxAccessToken={mapboxToken}
          initialViewState={{
            longitude: markerPosition.longitude,
            latitude: markerPosition.latitude,
            zoom: 8
          }}
          mapStyle={process.env.NEXT_PUBLIC_MAPBOX_GL_STYLE_URL}
          onClick={handleMapClick}
          onLoad={handleMapLoad}
          cursor="crosshair"
          attributionControl={false}
          logoPosition="top-left"
        >
          {isMapLoaded && (
            <Source id="marker-source" type="geojson" data={markerGeoJSON}>
              <Layer
                id="marker-layer"
                type="circle"
                paint={{
                  "circle-radius": 8,
                  "circle-color": "#ef4444",
                  "circle-stroke-color": "#ffffff",
                  "circle-stroke-width": 2
                }}
              />
            </Source>
          )}
        </Map>
        
        <div className="absolute top-2 right-2">
          <Button
            size="sm"
            variant="flat"
            className="bg-white/90 backdrop-blur-sm"
            onPress={centerMapOnMarker}
            startContent={<Center size={16} />}
          >
            {t("housing.centerMap")}
          </Button>
        </div>
      </div>
      
      <div className="p-3 bg-gray-50 text-sm text-gray-600">
        {t("housing.mapPickerInstructions")}
      </div>
    </div>
  );
};

export default MapCoordinatePicker;
