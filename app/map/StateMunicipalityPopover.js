import HousingOverview from "@/app/_components/HousingOverview";
import GenericPopover from "@/app/_components/GenericPopover";

export default function StateMunicipalityPopover({ clickedFeatureInfo, popoverPlacement, onClose }) {
  const isOpen = Boolean(clickedFeatureInfo && ['states', 'municipalities'].includes(clickedFeatureInfo.layerId));

  return (
    <GenericPopover
      isOpen={isOpen}
      clickedFeatureInfo={clickedFeatureInfo}
      popoverPlacement={popoverPlacement}
      onClose={onClose}
    >
      <HousingOverview
        stateName={clickedFeatureInfo?.feature?.properties?.state_name}
        munName={clickedFeatureInfo?.feature?.properties?.mun_name}
      />
    </GenericPopover>
  );
}
