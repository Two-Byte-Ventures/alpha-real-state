# Alpha Real Estate

## Description

Alpha Real Estate is a web application for browsing real estate listings. It features a map-based search, filtering options, and detailed property views. This project is built with Next.js and integrates various modern web technologies to provide a seamless user experience.

## Technologies Used

- **Framework:** [Next.js](https://nextjs.org/)
- **UI Components:** [NextUI](https://nextui.org/)
- **Styling:** [Tailwind CSS](https://tailwindcss.com/)
- **Map:** [Mapbox GL JS](https://www.mapbox.com/mapbox-gl-js/api/) & [React Map GL](https://visgl.github.io/react-map-gl/)
- **State Management:** [Zustand](https://github.com/pmndrs/zustand)
- **Internationalization:** [Rosetta](https://github.com/lukeed/rosetta)
- **Backend/DB:** [Supabase](https://supabase.io/)
- **Icons:** [React Icons](https://react-icons.github.io/react-icons/)

## Key Features

- **Interactive Map:** Users can browse properties on an interactive map.
- **Filtering:** Properties can be filtered by type and price.
- **Detailed Views:** Each property has a detailed view with more information.
- **Localization:** The application supports multiple languages.
- **Component-Based Architecture:** The frontend is built with reusable React components.

## Project Structure

The project follows a standard Next.js `app` directory structure. Key directories include:

-   `app/`: Main application logic, including pages, components, and services.
-   `lib/`: Utility functions and Supabase client configuration.
-   `public/`: Static assets.
-   `styles/`: Global styles.

## Getting Started

First, you'll need to set up your environment variables. Create a `.env.local` file in the root of the project and add your Supabase credentials:

```bash
NEXT_PUBLIC_SUPABASE_URL=your-supabase-url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
```

Then, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.js`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.
