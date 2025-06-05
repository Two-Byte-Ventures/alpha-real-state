import { Popover, PopoverTrigger, PopoverContent, Divider } from "@nextui-org/react";
import { Card, CardHeader, CardBody, CardFooter } from "@nextui-org/card";
import CallToAction from "@/app/_components/CallToAction";
import HousePrice from "@/app/_components/HousePrice";
import HouseDetails from "@/app/_components/HouseDetails";

export default function MarkerPopover({ clickedFeatureInfo, popoverPlacement }) {
  return (
    <Popover
      placement={popoverPlacement}
      isOpen={Boolean(clickedFeatureInfo && clickedFeatureInfo.layerId === 'markers')}
    >
      <PopoverTrigger>
        <div
          style={{
            position: "absolute",
            left: clickedFeatureInfo?.x || 0,
            top: clickedFeatureInfo?.y || 0,
          }}
        />
      </PopoverTrigger>
      <PopoverContent>
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
              brochure={`https://res.cloudinary.com/${process.env.NEXT_PUBLIC_CLOUDINARY_APP_NAME}/image/upload/housing_app/${clickedFeatureInfo?.feature?.properties?.assets?.url}/brochure.pdf`}
            />
          </CardFooter>
        </Card>
      </PopoverContent>
    </Popover>
  );
}
