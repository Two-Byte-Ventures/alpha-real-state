"use client";
import { create } from 'zustand';
import statesGeoJSONData from '@/geojson/states.json';
import municipalitiesGeoJSONData from '@/geojson/municipalities.json';
import { getFilteredHousingData, getHousingDataById, addHousingItem as addHousingItemService } from '../services/housingService';

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
  housingTypeFilters: ["house", "plaza", "industrial"], // Initialize with all types selected
  currentHousing: null, // Added to store the currently selected housing

  setPriceRange: (newPriceRange) => {
    set({ priceRange: newPriceRange });
    get().fetchFilteredData(); // Re-fetch data when price range changes
  },

  fetchFilteredData: async () => {
    const { priceRange, housingTypeFilters } = get(); // Get current priceRange and housingTypeFilters from store
    try {
      const minPrice = priceRange && typeof priceRange[0] === 'number' ? priceRange[0] : undefined;
      const maxPrice = priceRange && typeof priceRange[1] === 'number' ? priceRange[1] : undefined;

      // Fetch detailed housing data with all filters
      const fetchedHousingData = await getFilteredHousingData(minPrice, maxPrice, housingTypeFilters);
      
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
  initializeSources: async () => {
    // Call fetchFilteredData on initialization
    await get().fetchFilteredData();
  },

  // Action to toggle a housing type filter
  toggleHousingTypeFilter: (type) => {
    set((state) => {
      const newFilters = state.housingTypeFilters.includes(type)
        ? state.housingTypeFilters.filter((t) => t !== type)
        : [...state.housingTypeFilters, type];
      return { housingTypeFilters: newFilters };
    });
    get().fetchFilteredData(); // Re-fetch data when housing type filters change
  },

  fetchHousingById: async (id) => {
    try {
      const housing = await getHousingDataById(id);
      set({ currentHousing: housing });
    } catch (error) {
      console.error("Failed to fetch housing data by ID:", error);
      set({ currentHousing: null });
    }
  },

  addHousingItem: async (housingData) => {
    try {
      const newHousing = await addHousingItemService(housingData);
      // Refresh the filtered data to include the new item
      await get().fetchFilteredData();
      return newHousing;
    } catch (error) {
      console.error("Failed to add housing item:", error);
      throw error;
    }
  }
}));

export default useSourcesStore;
