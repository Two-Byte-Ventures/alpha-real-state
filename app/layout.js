import Navigation from "./_components/Navigation";
import '@/styles/globals.css'

export const metadata = {
  // This will be title displayed at the web browser tab on every page
  title: "Alpha Real State",
};

export default function RootLayout({ children }) {
  return (
    <html lang="es">
      <body>
        <Navigation />
        <main>{children}</main>
        <footer>Copyright by Two Byte Ventures</footer>
      </body>
    </html>
  );
}
