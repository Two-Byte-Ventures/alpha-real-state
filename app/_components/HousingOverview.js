import { Card, CardBody, CardFooter, CardHeader } from "@nextui-org/react";
import OverviewRow from "@/app/_components/OverviewRow";
import db from "@/housingdb/housing.json";

function HousingOverview({ stateName = null, munName = null }) {
  let dwellings;
  if (stateName !== null)
    dwellings = db["housingList"].filter(
      (house) => house["state_name"] === stateName
    );
  if (munName !== null) {
    dwellings = db["housingList"].filter(
      (house) => house["mun_name"] === munName
    );
  }
  return (
    <Card isBlurred className="border-none" shadow="none">
      <CardHeader className="text-small font-bold justify-center">
        <h1 className="text-2xl text-violet-700 font-serif">
          {stateName || munName}
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
