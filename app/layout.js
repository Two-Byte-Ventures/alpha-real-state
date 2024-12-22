import { Header } from "@/app/_components/Header";
import { TranslationService } from "@/app/services/translation-service";
import "@/styles/globals.css";

TranslationService.init();

export const metadata = {
  // This will be title displayed at the web browser tab on every page
  title: TranslationService.t("shared.title"),
};

export default function RootLayout({ children }) {
  return (
    <html lang="es">
      <body className="w-full h-full overflow-hidden">
        <Header />
        <main>{children}</main>
      </body>
    </html>
  );
}
