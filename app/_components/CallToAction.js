import { Brochure, Location, Picture, Whatsapp } from "@/app/_components/Icons";

function CallToAction({ coordinates, brochure }) {
  return (
    <div className="flex flex-grow justify-around">
      {/** <Picture/> **/}
      <Brochure url={brochure} />
      <Location coordinates={coordinates} />
      {/* Change number as desired, either hardcode or get it from somewhere else */}
      <Whatsapp number={523334687020} />
    </div>
  );
}

export default CallToAction;
