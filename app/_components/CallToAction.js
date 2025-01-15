import { FaMap, FaRegImage, FaLocationDot, FaWhatsapp} from 'react-icons/fa6';

function CallToAction() {
  return (
    <div className="flex flex-grow justify-around">
      <FaRegImage size={25}/>
      <FaMap size={25}/>
      <FaLocationDot size={25}/>
      <FaWhatsapp size={25}/>
    </div>
  );
}

export default CallToAction;
