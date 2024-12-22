import Link from "next/link";
import { useTranslations } from "@/app/hooks/use-translations";

export default function Navigation() {
  const { t } = useTranslations();
  return (
    <ul>
      <li>
        <Link href="/map">{t('shared.start')}</Link>
      </li>
    </ul>
  );
}
