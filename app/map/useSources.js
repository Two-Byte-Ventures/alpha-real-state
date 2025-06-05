import states from "@/geojson/states.json";
import municipalities from "@/geojson/municipalities.json";
import db from "@/housingdb/housing.json";

export default function useSources() {
  const allStateNames = states["features"].map(
    (state) => state["properties"]["state_name"]
  );
  const allMunNames = municipalities["features"].map(
    (mun) => mun["properties"]["mun_name"]
  );

  const dbStateNames = db["housingList"].map((house) => house["state_name"]);
  const dbMunNames = db["housingList"].map((house) => house["mun_name"]);

  const filteredStateNames = allStateNames.filter((state) =>
    dbStateNames.includes(state)
  );

  const filteredMunNames = allMunNames.filter((municipality) =>
    dbMunNames.includes(municipality)
  );

  return {
    statesGeoJSON: states,
    municipalitiesGeoJSON: municipalities,
    filteredStateNames,
    filteredMunNames,
  };
}
