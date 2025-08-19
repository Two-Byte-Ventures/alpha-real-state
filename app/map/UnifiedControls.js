"use client";
import { useState, useEffect } from "react";
import { Slider, Divider } from "@nextui-org/react";
import { FaDollarSign } from "react-icons/fa";
import { HiAdjustmentsHorizontal } from "react-icons/hi2";
import { House, Industrial, Plaza, Plus } from "@/app/_components/Icons";
import { useTranslations } from "@/app/hooks/use-translations";
import useSourcesStore from "../stores/useSourcesStore";
import AddHousingControl from "./AddHousingControl";

const UnifiedControls = () => {
  const { t } = useTranslations();
  // Price filter state
  const MIN_PRICE = 1000000;
  const MAX_PRICE = 20000000;
  const { priceRange: storePriceRange, setPriceRange: setStorePriceRange } = useSourcesStore();
  const [currentSliderValue, setCurrentSliderValue] = useState(storePriceRange);

  // Housing type filter state
  const housingTypes = ["house", "plaza", "industrial"];
  const { housingTypeFilters, toggleHousingTypeFilter } = useSourcesStore();

  // Control state for mobile responsiveness
  const [isExpanded, setIsExpanded] = useState(false);

  // Update slider if storePriceRange changes
  useEffect(() => {
    setCurrentSliderValue(storePriceRange);
  }, [storePriceRange]);

  // Debounce function for price slider
  function debounce(func, delay) {
    let timeout;
    return function(...args) {
      const context = this;
      clearTimeout(timeout);
      timeout = setTimeout(() => func.apply(context, args), delay);
    };
  }

  const handleSliderChange = debounce((value) => {
    setCurrentSliderValue(value);
    setStorePriceRange(value);
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
    <>
      {/* Mobile view - Expandable filter control */}
      <div className="md:hidden absolute top-4 right-4 z-20 space-y-3">
        {!isExpanded ? (
          // Collapsed state - Show only toggle button
          <button
            onClick={() => setIsExpanded(true)}
            className="bg-white p-3 rounded-full shadow-lg flex items-center justify-center"
            aria-label="Open filters"
          >
            <HiAdjustmentsHorizontal size={20} className="text-black" />
          </button>
        ) : (
          // Expanded state - Show filter controls only
          <div className="bg-white p-4 rounded-2xl shadow-lg w-72 space-y-4">
            {/* Header with close button */}
            <div className="flex items-center justify-between">
              <h3 className="text-sm font-semibold text-gray-800">{t("shared.filters")}</h3>
              <button
                onClick={() => setIsExpanded(false)}
                className="text-gray-500 hover:text-gray-700"
                aria-label="Close filters"
              >
                ✕
              </button>
            </div>

            {/* Price Filter Section */}
            <div className="space-y-3">
              <div className="flex items-center space-x-2">
                <div className="bg-black rounded-full p-1.5">
                  <FaDollarSign size={14} className="text-white" />
                </div>
                <span className="text-sm font-medium text-gray-800">{t("shared.price")}</span>
              </div>
              
              <div className="space-y-2">
                <div className="flex justify-between text-xs text-gray-600">
                  <span>{formatLabelValue(MIN_PRICE)}</span>
                  <span>{formatLabelValue(MAX_PRICE)}</span>
                </div>
                <Slider
                  aria-label="Price range slider"
                  step={100000}
                  minValue={MIN_PRICE}
                  maxValue={MAX_PRICE}
                  value={currentSliderValue}
                  onChange={handleSliderChange}
                  showTooltip={true}
                  tooltipProps={{
                    classNames: {
                      content: "text-white bg-black",
                    },
                    showArrow: false,
                  }}
                  classNames={{
                    base: "w-full",
                    trackWrapper: "h-1.5",
                    track: "bg-gray-300 h-1.5 rounded-full",
                    filler: "bg-black h-1.5 rounded-full",
                    thumb: "bg-white border-2 border-black h-4 w-4 data-[dragging=true]:shadow-lg data-[dragging=true]:h-5 data-[dragging=true]:w-5",
                  }}
                />
              </div>
            </div>

            <Divider />

            {/* Housing Type Filter Section */}
            <div className="space-y-3">
              <span className="text-sm font-medium text-gray-800">{t("shared.propertyType")}</span>
              <div className="flex justify-center space-x-3">
                {housingTypes.map((type) => {
                  const isActive = housingTypeFilters.includes(type);
                  return (
                    <button
                      key={type}
                      onClick={() => toggleHousingTypeFilter(type)}
                      className={`p-3 rounded-full transition-colors duration-150 ease-in-out border-2 ${
                        isActive
                          ? "bg-black border-black hover:bg-gray-800"
                          : "bg-white border-gray-300 hover:border-gray-400"
                      }`}
                      aria-pressed={isActive}
                      aria-label={`Filter by ${type}`}
                    >
                      {type === "house" && (
                        <House
                          className={`w-6 h-6 ${
                            isActive ? "text-white" : "text-gray-600"
                          }`}
                        />
                      )}
                      {type === "plaza" && (
                        <Plaza
                          className={`w-6 h-6 ${
                            isActive ? "text-white" : "text-gray-600"
                          }`}
                        />
                      )}
                      {type === "industrial" && (
                        <Industrial
                          className={`w-6 h-6 ${
                            isActive ? "text-white" : "text-gray-600"
                          }`}
                        />
                      )}
                    </button>
                  );
                })}
              </div>
            </div>
          </div>
        )}
        
        {/* Separate Add Housing Control for mobile */}
        <div className="flex justify-end">
          <AddHousingControl embedded={true} />
        </div>
      </div>

      {/* Desktop view - Horizontal layout */}
      <div className="hidden md:flex absolute top-4 right-4 z-20 items-center space-x-4">
        {/* Price Filter */}
        <div className="bg-white p-2.5 rounded-full shadow-lg flex items-center space-x-3 min-w-[300px]">
          <div className="bg-black rounded-full p-2 flex-shrink-0">
            <FaDollarSign size={18} className="text-white" />
          </div>
          <span className="text-xs font-semibold text-gray-800 flex-shrink-0">
            {formatLabelValue(MIN_PRICE)}
          </span>
          <Slider
            aria-label="Price range slider"
            step={100000}
            minValue={MIN_PRICE}
            maxValue={MAX_PRICE}
            value={currentSliderValue}
            onChange={handleSliderChange}
            showTooltip={true}
            tooltipProps={{
              classNames: {
                content: "text-white bg-black",
              },
              showArrow: false,
            }}
            classNames={{
              base: "flex-grow px-1",
              trackWrapper: "h-1.5",
              track: "bg-gray-300 h-1.5 rounded-full",
              filler: "bg-black h-1.5 rounded-full",
              thumb: "bg-white border-2 border-black h-4 w-4 data-[dragging=true]:shadow-lg data-[dragging=true]:h-5 data-[dragging=true]:w-5",
            }}
          />
          <span className="text-xs font-semibold text-gray-800 flex-shrink-0">
            {formatLabelValue(MAX_PRICE)}
          </span>
        </div>

        {/* Housing Type Filter */}
        <div className="bg-white p-1.5 rounded-full shadow-lg flex items-center space-x-1.5">
          {housingTypes.map((type) => {
            const isActive = housingTypeFilters.includes(type);
            return (
              <button
                key={type}
                onClick={() => toggleHousingTypeFilter(type)}
                className={`p-1.5 rounded-full transition-colors duration-150 ease-in-out ${
                  isActive
                    ? "hover:bg-gray-200"
                    : "hover:bg-gray-100"
                }`}
                aria-pressed={isActive}
                aria-label={`Filter by ${type}`}
              >
                {type === "house" && (
                  <House
                    className={`w-5 h-5 ${
                      isActive ? "text-black" : "text-gray-400"
                    }`}
                  />
                )}
                {type === "plaza" && (
                  <Plaza
                    className={`w-5 h-5 ${
                      isActive ? "text-black" : "text-gray-400"
                    }`}
                  />
                )}
                {type === "industrial" && (
                  <Industrial
                    className={`w-5 h-5 ${
                      isActive ? "text-black" : "text-gray-400"
                    }`}
                  />
                )}
              </button>
            );
          })}
        </div>
      </div>

      {/* Desktop Add Housing Control - Separate positioning */}
      <div className="hidden md:block">
        <AddHousingControl embedded={false} />
      </div>
    </>
  );
};

export default UnifiedControls;
