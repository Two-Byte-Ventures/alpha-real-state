import { Popover, PopoverTrigger, PopoverContent } from "@nextui-org/react";
import { IoClose } from "react-icons/io5";

export default function GenericPopover({
  isOpen,
  clickedFeatureInfo,
  popoverPlacement,
  onClose,
  children,
}) {
  return (
    <Popover
      placement={popoverPlacement}
      isOpen={isOpen}
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
      <PopoverContent className="relative">
        {onClose && (
          <button
            onClick={onClose}
            className="absolute top-2 right-2 p-1 bg-transparent border-none cursor-pointer text-gray-500 hover:text-gray-700 z-10"
            aria-label="Close popover"
          >
            <IoClose size={20} />
          </button>
        )}
        {children}
      </PopoverContent>
    </Popover>
  );
}
