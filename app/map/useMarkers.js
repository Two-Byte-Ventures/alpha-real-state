import db from "@/housingdb/housing.json";

export default function useMarkers() {
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

  return {
    markers,
  };
}
