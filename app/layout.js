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
      <body className="h-screen w-screen overflow-hidden">
        <Header />
        <main className="h-full w-full flex">{children}</main>
      </body>
    </html>
  );
}
