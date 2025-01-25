import {
  Increase,
  House,
  Industrial,
  Plaza,
} from "@/app/_components/Icons";
import { useTranslations } from "@/app/hooks/use-translations";

function OverviewRow({ price, type, percentage }) {
  const { t } = useTranslations();
  const isAppreciated = percentage >= 5;
  const textClassName = isAppreciated ? "text-green-600" : "text-slate-600";
  const iconColor = isAppreciated ? "green" : "gray";
  const formattedPrice = new Intl.NumberFormat("es-MX", {
    style: "currency",
    currency: "MXN",
  }).format(price);
  return (
    <div className="flex items-center gap-3 flex-grow justify-between text-medium py-1">
      <div>
        {type === "house" && <House/>}
        {type === "plaza" && <Plaza/>}
        {type === "industrial" && <Industrial/>}
      </div>
      <p>
        {t(`housing.from`)} <span className="font-extrabold text-">{formattedPrice}</span>{" "}
      </p>
      <div className="flex items-center flex-grow justify-self-end">
        <span className={`font-extrabold ${textClassName}`}>
          {percentage}%
        </span>
        <Increase color={iconColor}/>
      </div>
    </div>
  );
}

export default OverviewRow;
