import { Info } from "@/app/_components/Icons";

/* TODO: Add property for currency and integrate better how we handle currency
  format, i.e.
  HousePrice({ price, currency }) {
 */
function HousePrice({ price }) {
  const currency = 'MXN';
  const formattedPrice = new Intl.NumberFormat("es-MX", {
    style: "currency",
    currency,
  }).format(price);
  return (
    <div className="flex font-sans justify-between items-center flex-grow text-2xl">
      <div className="flex items-center justify-center gap-3">
        <h1 className="text-4xl font-serif justify-self-start">{formattedPrice}</h1>
        <p>{currency}</p>
      </div>
      {/**<Info/>/**/}
    </div>
  );
}

export default HousePrice;
