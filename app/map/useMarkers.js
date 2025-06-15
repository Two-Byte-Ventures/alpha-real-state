import { useMemo } from 'react';
import useSourcesStore from '../stores/useSourcesStore';

export default function useMarkers() {
  // Get housingData from the store
  const housingData = useSourcesStore((state) => state.housingData);

  const markers = useMemo(() => {
    return {
      type: "FeatureCollection",
      features: housingData.map((house) => ({
        type: "Feature",
        properties: { ...house },
        geometry: {
          coordinates: house["coordinates"],
          type: "Point",
        },
      })),
    };
  }, [housingData]);
  
  return {
    markers,
  };
}
