import { Card, CardBody, CardHeader } from "@nextui-org/react";
import OverviewRow from "./OverviewRow";

function HousingOverview({ name }) {
  const dwellings = [
    {
      id: 1,
      price: "4,513,900",
      type: "house",
      percentage: "11.9%",
      increased: true,
    },
    {
      id: 2,
      price: "2,000,760",
      type: "plaza",
      percentage: "15.9%",
      increased: true,
    },
    {
      id: 3,
      price: "10,913,900",
      type: "industrial",
      percentage: "9.9%",
      increased: false,
    },
  ];
  return (
    <Card isBlurred className="border-none" shadow="none">
      <CardHeader className="text-small font-bold justify-center">
        <h1 className="text-xl text-violet-700 font-serif">{name}</h1>
      </CardHeader>
      <CardBody className="text-tiny">
        {dwellings.map((dwelling) => (
          <OverviewRow
            key={dwelling.id}
            price={dwelling.price}
            type={dwelling.type}
            percentage={dwelling.percentage}
            increased={dwelling.increased}
          />
        ))}
      </CardBody>
    </Card>
  );
}

export default HousingOverview;
