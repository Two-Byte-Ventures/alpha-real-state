import { Divider } from "@nextui-org/react";
import { Card, CardHeader, CardBody, CardFooter } from "@nextui-org/card";
import CallToAction from "@/app/_components/CallToAction";
import HousePrice from "@/app/_components/HousePrice";
import HouseDetails from "@/app/_components/HouseDetails";
import GenericPopover from "@/app/_components/GenericPopover";

export default function MarkerPopover({ clickedFeatureInfo, popoverPlacement, onClose }) {
  const isOpen = Boolean(clickedFeatureInfo && clickedFeatureInfo.layerId === 'markers');

  return (
    <GenericPopover
      isOpen={isOpen}
      clickedFeatureInfo={clickedFeatureInfo}
      popoverPlacement={popoverPlacement}
      onClose={onClose}
    >
      <Card
        isBlurred
        className="border-none"
        shadow="none"
      >
        <CardHeader className="text-small font-bold">
          <HousePrice
            price={clickedFeatureInfo?.feature?.properties?.price}
          />
        </CardHeader>

        <Divider />

        <CardBody className="text-tiny">
          <HouseDetails
            name={clickedFeatureInfo?.feature?.properties?.name}
            tag={clickedFeatureInfo?.feature?.properties?.assets?.tag}
          />
        </CardBody>

        <Divider />

        <CardFooter className="text-small">
          <CallToAction
            name={clickedFeatureInfo?.feature?.properties?.name}
            coordinates={{
              lng: clickedFeatureInfo?.feature?.properties?.coordinates?.[0],
              lat: clickedFeatureInfo?.feature?.properties?.coordinates?.[1],
            }}
            brochure={`https://res.cloudinary.com/${process.env.NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME}/image/upload/housing_app/${clickedFeatureInfo?.feature?.properties?.assets?.url}/brochure.pdf`}
          />
        </CardFooter>
      </Card>
    </GenericPopover>
  );
}
