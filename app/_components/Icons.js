import { FaCaretDown, FaCaretUp, FaCircleQuestion, FaHouse, FaIndustry, FaLocationDot, FaMap, FaRegImage, FaStore, FaWhatsapp } from "react-icons/fa6";

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

export function Brochure({ size = 25, ...props }) {
  return <FaMap size={size} {...props} />;
}

export function Location({ size = 25, ...props }) {
  return <FaLocationDot size={size} {...props} />;
}

export function Whatsapp({ size = 25, ...props }) {
  return <FaWhatsapp size={size} {...props} />;
}