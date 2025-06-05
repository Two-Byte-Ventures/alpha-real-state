import { Popover, PopoverTrigger, PopoverContent } from "@nextui-org/react";
import HousingOverview from "@/app/_components/HousingOverview";

export default function StateMunicipalityPopover({ clickedFeatureInfo, popoverPlacement }) {
  return (
    <Popover
      placement={popoverPlacement}
      isOpen={Boolean(clickedFeatureInfo && ['states', 'municipalities'].includes(clickedFeatureInfo.layerId))}
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
        <HousingOverview
          stateName={clickedFeatureInfo?.feature?.properties?.state_name}
          munName={clickedFeatureInfo?.feature?.properties?.mun_name}
        />
      </PopoverContent>
    </Popover>
  );
}
