import {
  ChevronDoubleDown,
  ChevronDoubleUp,
  House,
  Industrial,
  Plaza,
} from "./Icons";

function OverviewRow({ price, type, percentage, increased }) {
  return (
    <div className="flex items-center gap-3 flex-grow justify-between">
      <div>
        {type === "house" && <House />}
        {type === "plaza" && <Plaza />}
        {type === "industrial" && <Industrial />}
      </div>
      <p>
        desde <span className="font-bold">${price}</span>{" "}
      </p>
      <div className="flex items-center flex-grow justify-self-end">
        <span
          className={`text-bold ${
            increased ? "text-green-600" : "text-red-600"
          }`}
        >
          {percentage}
        </span>
        {increased && <ChevronDoubleUp color="green" />}
        {!increased && <ChevronDoubleDown color="red" />}
      </div>
    </div>
  );
}

export default OverviewRow;
