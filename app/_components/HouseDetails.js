import { Accordion, AccordionItem, Image } from "@nextui-org/react";

function HouseDetails({ name }) {
  return (
    <div className="flex flex-col items-center flex-grow">
      <h1 className="font-sans text-xl my-2 text-violet-700 font-bold">
        {name}
      </h1>
      <Image
        alt="Example house"
        src="/actions/image.png"
        className="aspect-auto rounded-none"
        width={305}
        height={182}
      />
      <div className="mt-4 mb-1 rounded-lg shadow-md border-small ">
        <div className="flex mx-2 mt-2 flex-grow justify-between items-center">
          <h1 className="justify-self-start font-bold text-medium">
            Esquema 1
          </h1>
          <h1 className="justify-self-end text-green-600 font-bold text-medium">
            12.8%
          </h1>
        </div>
        <Accordion selectionMode="multiple">
          <AccordionItem
            key="1"
            aria-label="Accordion 1"
            title="Enganche $652,800"
          >
            <div className="flex items-center ">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth="1.5"
                stroke="currentColor"
                className="size-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"
                />
              </svg>

              <p className="ml-1">Escrituras $100,000</p>
            </div>
          </AccordionItem>

          <AccordionItem
            key="2"
            aria-label="Accordion 2"
            title="Enganche $402,000"
          >
            <div className="flex items-center ">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth="1.5"
                stroke="currentColor"
                className="size-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"
                />
              </svg>

              <p className="ml-1">Escrituras $90,000</p>
            </div>
          </AccordionItem>
        </Accordion>
      </div>
    </div>
  );
}

export default HouseDetails;
