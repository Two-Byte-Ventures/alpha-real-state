import { Info } from "@/app/_components/Icons";

/* TODO: Add property for currency and integrate better how we handle currency
  format, i.e.
  HousePrice({ price, currency }) {
 */
function HousePrice({ price }) {
  const currency = 'MXN';
  return (
    <div className="flex font-sans justify-between items-center flex-grow text-2xl">
      <div className="flex items-center justify-center gap-3">
        <h1 className="text-4xl font-serif justify-self-start">${price}</h1>
        <p>{currency}</p>
      </div>
      <Info/>
    </div>
  );
}

export default HousePrice;
