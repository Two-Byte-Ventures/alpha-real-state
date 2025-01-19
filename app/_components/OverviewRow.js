import {
  Decrease,
  Increase,
  House,
  Industrial,
  Plaza,
} from "@/app/_components/Icons";

function OverviewRow({ price, type, percentage, increased }) {
  const currency = 'MXN';
  return (
    <div className="flex items-center gap-3 flex-grow justify-between text-medium py-1">
      <div>
        {type === "house" && <House/>}
        {type === "plaza" && <Plaza/>}
        {type === "industrial" && <Industrial/>}
      </div>
      <p>
        desde <span className="font-extrabold text-">${price} {currency}</span>{" "}
      </p>
      <div className="flex items-center flex-grow justify-self-end">
        <span
          className={`font-extrabold ${
            increased ? "text-green-600" : "text-red-600"
          }`}
        >
          {percentage}
        </span>
        {increased && <Increase color="green"/>}
        {!increased &&  <Decrease color="red"/>}
      </div>
    </div>
  );
}

export default OverviewRow;
