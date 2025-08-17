import {
  FaCaretDown,
  FaCaretUp,
  FaCircleQuestion,
  FaHouse,
  FaIndustry,
  FaLocationDot,
  FaMap,
  FaPlus,
  FaRegImage,
  FaStore,
  FaWhatsapp,
} from "react-icons/fa6";

export function House({ size = 25, ...props }) {
  return <FaHouse size={size} {...props} />;
}

export function Plaza({ size = 25, ...props }) {
  return <FaStore size={size} {...props} />;
}

export function Industrial({ size = 25, ...props }) {
  return <FaIndustry size={size} {...props} />;
}

export function Increase({ size = 25, color = "green", ...props }) {
  return <FaCaretUp size={size} color={color} {...props} />;
}

export function Decrease({ size = 25, color = "red", ...props }) {
  return <FaCaretDown size={size} color={color} {...props} />;
}

export function Info({ size = 25, ...props }) {
  return <FaCircleQuestion size={size} {...props} />;
}

export function Picture({ size = 25, ...props }) {
  return <FaRegImage size={size} {...props} />;
}

export function Brochure({ size = 25, url = null, ...props }) {
  if (url) {
    return (
      <a href={url} target="_blank" rel="noopener noreferrer">
        <FaMap size={size} {...props} />
      </a>
    );
  }
  return <FaMap size={size} {...props} />;
}

export function Location({ size = 25, coordinates = null, ...props }) {
  if (coordinates) {
    return (
      <a
        href={`https://www.google.com/maps/search/?api=1&query=${coordinates.lat},${coordinates.lng}`}
        target="_blank"
        rel="noopener noreferrer"
      >
        <FaLocationDot size={size} {...props} />
      </a>
    );
  }
  return <FaLocationDot size={size} {...props} />;
}

export function Whatsapp({ size = 25, number = null, message = '', ...props }) {
  if (number) {
    return (
      <a
        href={`https://wa.me/${number}?text=${encodeURIComponent(message)}`}
        target="_blank"
        rel="noopener noreferrer"
      >
        <FaWhatsapp size={size} {...props} />
      </a>
    );
  }
  return <FaWhatsapp size={size} {...props} />;
}

export function Plus({ size = 25, ...props }) {
  return <FaPlus size={size} {...props} />;
}
