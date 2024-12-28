import { NextUIProvider } from "@nextui-org/react";
import { Header } from "@/app/_components/Header";
import { TranslationService } from "@/app/services/translation-service";
import "@/styles/globals.css";
import AppProvider from "@/app/providers/app-provider";

export const metadata = {
  // This will be title displayed at the web browser tab on every page
  title: 'tusiguientecasa.com',
};

export default function RootLayout({ children }) {
  return (
    <html lang="es">
      <body>
        <AppProvider>
          <NextUIProvider className="flex flex-col h-screen w-screen overflow-hidden">
            <Header />
            <main className="h-full w-full flex bg-[url('/brand/bg.png')] bg-cover bg-center">
              {children}
            </main>
          </NextUIProvider>
        </AppProvider>
      </body>
    </html>
  );
}
