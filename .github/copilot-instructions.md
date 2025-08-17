# Alpha Real Estate - AI Coding Instructions

## Core Principles
- **ONLY MAKE REQUESTED CHANGES** - Never modify working code without explicit request
- **UNDERSTAND BEFORE ACTING** - Read current file contents and analyze specific errors
- **ASK FOR CLARIFICATION** if requests are ambiguous
- **FOCUS ON MINIMAL, TARGETED FIXES** - Avoid over-engineering solutions

## Project Overview
Real estate mapping application built with Next.js 15, featuring interactive Mapbox maps, Supabase backend, and multi-language support. Users browse properties on an interactive map with filtering by type, price, and location.

## Architecture & Key Components

### Database Schema (Supabase)
- **Fixed ID Strategy**: Countries, states, municipalities, and housing_types use predetermined IDs from JSON data
- **Composite Keys**: States use `(country_id, id)`, municipalities use `(country_id, state_id, id)`
- **Auto-increment**: Only `housing` and `housing_amenities` tables
- **Migrations**: Located in `/migrations/` - never modify fixed IDs without explicit request

### State Management Pattern
```javascript
// Zustand store at app/stores/useSourcesStore.js
const { priceRange, housingTypeFilters, fetchFilteredData } = useSourcesStore();
```
- Central store manages: price filters, housing type filters, GeoJSON data, and fetched housing data
- Auto-fetches data when filters change via `fetchFilteredData()`

### Translation System
```javascript
// Rosetta-based i18n in app/services/translation-service.js
const { t } = useTranslations();
const title = t("shared.title"); // "tusiguientecasa.com"
```
- Spanish-first with nested key structure (`shared.title`, `housing.from`)
- Initialized in `AppProvider` context

### Map Integration
```javascript
// Custom hooks: app/map/useMap.js and app/map/useMarkers.js
const { mapRef, clickedFeatureInfo, onClickHandler } = useMap();
```
- Mapbox GL with react-map-gl wrapper
- GeoJSON layers for states/municipalities from `/geojson/` directory
- Dynamic markers from housing data with coordinate-based positioning

## Development Workflows

### Environment Setup
```bash
# Required .env.local variables
NEXT_PUBLIC_SUPABASE_URL=your-supabase-url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
NEXT_PUBLIC_MAPBOX_ACCESS_TOKEN=your-token
NEXT_PUBLIC_MAPBOX_GL_STYLE_URL=mapbox://styles/your/style
NEXT_PUBLIC_MAPBOX_ENABLE=true
NEXT_PUBLIC_CLOUDINARY_APP_NAME=your_app_name
NEXT_PUBLIC_CLOUDINARY_URL=cloudinary://account:bucket@app
NEXT_PUBLIC_WHATSAPP=phone_number
```

### Development Commands
```bash
npm run dev      # Start development server
npm run build    # Build for production
npm run start    # Start production server
npm run lint     # Run ESLint
```

### Data Flow Pattern
1. User adjusts filters (price/type) → `useSourcesStore` updates
2. Store triggers `fetchFilteredData()` → Supabase query with filters
3. Results update `housingData` → Map markers refresh automatically
4. Click interactions handled by `useMap` → Popover displays property details

### Component Structure
- `app/_components/`: Reusable UI (Header, Card, Icons, etc.)
- `app/hooks/`: Custom React hooks (use-translations.js)
- `app/map/`: Map-specific components with custom hooks
- `app/providers/`: Context providers (app-provider.js)
- `app/services/`: Business logic and API calls
- `app/stores/`: Zustand state management
- `lib/`: Utility functions and configurations
- Client components require `"use client"` directive
- NextUI components for consistent styling

## Project-Specific Conventions

### File Naming & Imports
```javascript
// Use absolute imports with @/ alias
import { Header } from "@/app/_components/Header";
import useSourcesStore from "@/app/stores/useSourcesStore";
```

### Naming Conventions
- **Components**: PascalCase (e.g., `HouseDetails.js`)
- **Hooks**: camelCase with "use" prefix (e.g., `useTranslations.js`)
- **Services**: camelCase with descriptive suffix (e.g., `housingService.js`)
- **Stores**: camelCase with "Store" suffix (e.g., `useSourcesStore.js`)

### Housing Type Mapping
```javascript
// Fixed mapping in housingService.js
const typeIds = housingTypeFilters.map(type => {
  if (type === 'house') return 1;      // Casa Residencial
  if (type === 'plaza') return 2;      // Plaza Comercial  
  if (type === 'industrial') return 3; // Nave Industrial
});
```

### Styling Patterns
- Tailwind CSS with custom background: `bg-[url('/brand/bg.png')]`
- NextUI theme integration in root layout
- Responsive design with mobile-first approach
- Custom fonts: Lexend (primary), Jockey One (headings)

## Critical Integration Points

### Supabase Queries
```javascript
// Join pattern for housing data in housingService.js
.select(`
  id, name, price, percentage,
  housing_types (name),
  states (name),
  municipalities (name),
  longitude, latitude
`)
```

### Map Event Handling
```javascript
// Interaction layers in app/map/page.js
interactiveLayerIds={["states", "municipalities", "markers"]}
onClick={onClickHandler}
```

## Common Pitfalls to Avoid
- Never modify fixed database IDs (countries, states, municipalities)
- Don't change composite primary key structure
- Avoid breaking absolute import paths with @/ alias
- Don't remove `"use client"` directives from interactive components
- Map components require Mapbox token for functionality

## Database Schema Rules
- **Fixed IDs**: Countries (1=Mexico, 2=US), states (22=Querétaro), municipalities (11=El Marqués, 6=Corregidora, 14=Querétaro), housing_types (1=house, 2=plaza, 3=industrial)
- **RLS Policies**: All tables have Row Level Security policies in `01_initial_permissions.sql`
- **Foreign Key Constraints**: Use composite keys for states `(country_id, id)` and municipalities `(country_id, state_id, id)`
- **Conflict Resolution**: Use `ON CONFLICT DO NOTHING` for INSERT statements with fixed IDs

## Error Recovery Protocol
If you make mistakes:
1. **ACKNOWLEDGE** the error immediately
2. **EXPLAIN** what went wrong and why
3. **ASK** for specific guidance on the correct approach
4. **WAIT** for user confirmation before making corrections

## Quick Reference
- **Dev server**: `npm run dev` 
- **Database migrations**: Apply via Supabase dashboard
- **GeoJSON data**: Pre-loaded in `/geojson/` directory
- **Housing data**: Dynamic from Supabase `housing` table
- **Translations**: Add keys to `app/services/translation-service.js`
