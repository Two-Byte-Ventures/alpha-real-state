"use client";
import { useState, useEffect } from "react"; // Added useEffect
import { Slider } from "@nextui-org/react";
import { FaDollarSign } from "react-icons/fa";
import useSourcesStore from "../stores/useSourcesStore"; // Added

export default function PriceFilter({ minPrice = 500000, maxPrice = 50000000 }) { // Removed onPriceChange
  const MIN_PRICE = 100000;
  const MAX_PRICE = 10000000;

  // Get setPriceRange from the store
  const { priceRange: storePriceRange, setPriceRange: setStorePriceRange } = useSourcesStore();

  // Initialize local slider state from store or props
  const [currentSliderValue, setCurrentSliderValue] = useState(storePriceRange);

  // Update slider if storePriceRange changes (e.g. on initial load)
  useEffect(() => {
    setCurrentSliderValue(storePriceRange);
  }, [storePriceRange]);

  // Debounce function
  function debounce(func, delay) {
    let timeout;
    return function(...args) {
      const context = this;
      clearTimeout(timeout);
      timeout = setTimeout(() => func.apply(context, args), delay);
    };
  }

  const handleSliderChange = debounce((value) => {
    setCurrentSliderValue(value); // Update local state immediately for responsiveness
    setStorePriceRange(value); // Update store, which will trigger data fetching
  }, 50);

  // Helper to format numbers to K/M string
  const formatLabelValue = (value) => {
    if (value >= 1000000) {
      return `${value / 1000000}M`;
    }
    if (value >= 1000) {
      return `${value / 1000}K`;
    }
    return value.toString();
  };

  return (
    <div className="absolute top-4 right-4 bg-white p-2.5 rounded-full shadow-lg z-20 flex items-center space-x-3 w-auto min-w-[300px] max-w-sm"> {/* Adjusted padding, rounded-full, and width */}
      {/* Icon */}
      <div className="bg-black rounded-full p-2 flex-shrink-0">
        <FaDollarSign size={18} className="text-white" /> {/* Adjusted icon size slightly */}
      </div>

      {/* Min Value Label */}
      <span className="text-xs font-semibold text-gray-800 flex-shrink-0">{formatLabelValue(MIN_PRICE)}</span> {/* Adjusted font size */}

      {/* Slider */}
      <Slider
        aria-label="Price range slider"
        step={100000} // 100K steps
        minValue={MIN_PRICE}
        maxValue={MAX_PRICE}
        value={currentSliderValue} // Use local state for slider value
        onChange={handleSliderChange}
        classNames={{
          base: "flex-grow px-1", // Slider takes up available space
          trackWrapper: "h-1.5", // Adjusted track height
          track: "bg-gray-300 h-1.5 rounded-full", // Light gray track, rounded
          filler: "bg-black h-1.5 rounded-full", // Black filler for selected range, rounded
          thumb: "bg-white border-2 border-black h-4 w-4 data-[dragging=true]:shadow-lg data-[dragging=true]:h-5 data-[dragging=true]:w-5", // White thumb with black border, slightly smaller, with dragging effect
        }}
      />

      {/* Max Value Label */}
      <span className="text-xs font-semibold text-gray-800 flex-shrink-0">{formatLabelValue(MAX_PRICE)}</span> {/* Adjusted font size */}
      {/* Removed the old title and current range display */}
    </div>
  );
}
