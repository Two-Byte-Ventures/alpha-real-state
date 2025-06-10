"use client";
import { useState } from "react";
import { Slider } from "@nextui-org/react";
import { FaDollarSign } from "react-icons/fa"; // Changed from FaMoneyBillWave

export default function PriceFilter({ onPriceChange, minPrice = 500000, maxPrice  = 50000000 }) {
  const MIN_PRICE = 100000; // 100K
  const MAX_PRICE = 10000000; // 10M

  // Default price range, e.g., 500K to 2.5M. Ensure it's within new min/max.
  const [priceRange, setPriceRange] = useState([
    Math.max(MIN_PRICE, minPrice),
    Math.min(MAX_PRICE, maxPrice),
  ]);

  const handleSliderChange = (value) => {
    setPriceRange(value);
    if (onPriceChange) {
      onPriceChange(value);
    }
  };

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
        value={priceRange}
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
