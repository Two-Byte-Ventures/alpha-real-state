import Link from "next/link";

export default function Navigation() {
  return (
    <ul>
      <li>
        <Link href="/contact">Contact us</Link>
      </li>
      <li>
        <Link href="/about">About</Link>
      </li>
    </ul>
  );
}
