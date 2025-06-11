"use client";
import { create } from 'zustand';
import statesGeoJSONData from '@/geojson/states.json';
import municipalitiesGeoJSONData from '@/geojson/municipalities.json';
import { getFilteredHousingData } from '../services/housingService'; // Adjusted import

const allStateNames = statesGeoJSONData.features.map(
  (state) => state.properties.state_name
);
const allMunNames = municipalitiesGeoJSONData.features.map(
  (mun) => mun.properties.mun_name
);

const useSourcesStore = create((set, get) => ({
  priceRange: [500000, 50000000], // Default price range
  dbStateNames: [],
  dbMunNames: [],
  statesGeoJSON: statesGeoJSONData,
  municipalitiesGeoJSON: municipalitiesGeoJSONData,
  filteredStateNames: [],
  filteredMunNames: [],
  housingData: [], // Added to store fetched housing data

  setPriceRange: (newPriceRange) => {
    set({ priceRange: newPriceRange });
    get().fetchFilteredData(); // Re-fetch data when price range changes
  },

  fetchFilteredData: async () => {
    const { priceRange } = get(); // Get current priceRange from store
    try {
      const minPrice = priceRange && typeof priceRange[0] === 'number' ? priceRange[0] : undefined;
      const maxPrice = priceRange && typeof priceRange[1] === 'number' ? priceRange[1] : undefined;

      // Fetch detailed housing data instead of just names
      const fetchedHousingData = await getFilteredHousingData(minPrice, maxPrice);
      
      // Extract state and municipality names from the fetched housing data
      const fetchedDbStateNames = [...new Set(fetchedHousingData.map(item => item.state_name).filter(name => name))];
      const fetchedDbMunNames = [...new Set(fetchedHousingData.map(item => item.mun_name).filter(name => name))];

      const newFilteredStateNames = allStateNames.filter((state) =>
        fetchedDbStateNames.includes(state)
      );
      const newFilteredMunNames = allMunNames.filter((municipality) =>
        fetchedDbMunNames.includes(municipality)
      );

      set({ 
        housingData: fetchedHousingData, // Store the detailed housing data
        dbStateNames: fetchedDbStateNames, 
        dbMunNames: fetchedDbMunNames,
        filteredStateNames: newFilteredStateNames,
        filteredMunNames: newFilteredMunNames
      });
    } catch (error) {
      console.error("Failed to fetch housing data:", error);
      set({ 
        housingData: [],
        dbStateNames: [], 
        dbMunNames: [],
        filteredStateNames: [],
        filteredMunNames: []
      });
    }
  },
  
  // Action to initialize data fetching
  initializeSources: () => {
    // Call fetchFilteredData on initialization
    get().fetchFilteredData();
  }
}));

export default useSourcesStore;
