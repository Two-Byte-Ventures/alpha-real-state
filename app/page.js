import Link from "next/link";

export default function Page() {
  return (
    <div>
      <h1>Hello World!</h1>

      <Link href="/contact">Contact us</Link>
      <br />
      <Link href="/about">About</Link>
    </div>
  );
}
