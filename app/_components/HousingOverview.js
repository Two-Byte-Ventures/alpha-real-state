import { Card, CardBody, CardHeader } from "@nextui-org/react";
import OverviewRow from "@/app/_components/OverviewRow";
import useSourcesStore from "@/app/stores/useSourcesStore"; // Import the store

function HousingOverview({ stateName = null, munName = null }) {
  // Get housingData from the store
  const housingData = useSourcesStore((state) => state.housingData);
  const { initializeSources } = useSourcesStore(); // Get priceRange and initializeSources

  // Initialize data fetching when the component mounts if not already done
  // This is a basic way to ensure data is loaded.
  // For more complex scenarios, consider useEffect with dependency array.
  if (housingData.length === 0) {
    // Or a more specific check if data has been initialized
    initializeSources();
  }

  let dwellings = housingData;

  // Filter based on stateName or munName if provided
  if (stateName !== null) {
    dwellings = housingData.filter(
      (house) => house["state_name"] === stateName
    );
  }
  if (munName !== null) {
    dwellings = housingData.filter(
      (house) => house["mun_name"] === munName
    );
  }

  return (
    <Card isBlurred className="border-none" shadow="none">
      <CardHeader className="text-small font-bold justify-center">
        <h1 className="text-2xl text-violet-700 font-serif">
          {stateName || munName || "Overview"} {/* Added a fallback title */}
        </h1>
      </CardHeader>
      <CardBody className="text-tiny">
        {dwellings.map((dwelling) => (
          <OverviewRow
            key={dwelling.id}
            price={dwelling.price}
            type={dwelling.type}
            percentage={dwelling.percentage}
          />
        ))}
      </CardBody>
    </Card>
  );
}

export default HousingOverview;
