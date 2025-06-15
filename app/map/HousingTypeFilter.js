"use client";
import { House, Industrial, Plaza } from "@/app/_components/Icons";
import useSourcesStore from "../stores/useSourcesStore";

const HousingTypeFilter = () => {
  const housingTypes = ["house", "plaza", "industrial"];
  const { housingTypeFilters, toggleHousingTypeFilter } = useSourcesStore();

  return (
    <div className="absolute top-20 right-2 bg-white p-1.5 rounded-full shadow-lg flex items-center space-x-1.5 z-10">
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
  );
};

export default HousingTypeFilter;
