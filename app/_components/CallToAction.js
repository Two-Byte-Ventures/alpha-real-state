import { Brochure, Location, Picture, Whatsapp } from "@/app/_components/Icons";

function CallToAction() {
  return (
    <div className="flex flex-grow justify-around">
      <Picture/>
      <Brochure/>
      <Location/>
      <Whatsapp/>
    </div>
  );
}

export default CallToAction;
