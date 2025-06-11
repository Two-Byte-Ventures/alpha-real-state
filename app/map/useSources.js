"use client"; // Add "use client" directive

import { useState, useEffect } from "react"; // Import useState and useEffect
import states from "@/geojson/states.json";
import municipalities from "@/geojson/municipalities.json";
import { getHousingLocationNames } from "../services/housingService"; // Adjusted import path

export default function useSources(priceRange) {
  const [dbStateNames, setDbStateNames] = useState([]);
  const [dbMunNames, setDbMunNames] = useState([]);

  const allStateNames = states["features"].map(
    (state) => state["properties"]["state_name"]
  );
  const allMunNames = municipalities["features"].map(
    (mun) => mun["properties"]["mun_name"]
  );

  useEffect(() => {
    async function fetchData() {
      const { dbStateNames: fetchedDbStateNames, dbMunNames: fetchedDbMunNames } =
        await getHousingLocationNames(priceRange?.[0], priceRange?.[1]);
      setDbStateNames(fetchedDbStateNames);
      setDbMunNames(fetchedDbMunNames);
    }
    fetchData();
  }, [priceRange]); // Add priceRange to dependency array

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
