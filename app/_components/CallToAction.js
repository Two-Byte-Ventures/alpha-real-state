import { Brochure, Location, Picture, Whatsapp } from "@/app/_components/Icons";

function CallToAction({ coordinates, brochure, name }) {
  const baseMessage = `Hola, me interesa saber más sobre esta propiedad: ${name}`;
  return (
    <div className="flex flex-grow justify-around">
      {/** <Picture/> **/}
      <Brochure url={brochure} />
      <Location coordinates={coordinates} />
      {/* Change number as desired, either hardcode or get it from somewhere else */}
      <Whatsapp number={process.env.NEXT_PUBLIC_WHATSAPP} message={baseMessage}/>
    </div>
  );
}

export default CallToAction;
