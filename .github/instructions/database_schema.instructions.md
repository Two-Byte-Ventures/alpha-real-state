````instructions
---
applyTo: '**/migrations/*.sql'
---

# Database Schema Instructions

## Municipality and State ID Management

### Critical Rules:

1. **Municipality IDs**: 
   - IDs from JSON files MUST be preserved exactly as they appear
   - Municipality IDs are only unique within their state and country
   - Use composite primary key: `(country_id, state_id, id)`
   - Never use auto-incrementing IDs for municipalities

2. **State IDs**:
   - IDs from JSON files MUST be preserved exactly as they appear  
   - State IDs are only unique within their country
   - Use composite primary key: `(country_id, id)`
   - Never use auto-incrementing IDs for states

3. **Foreign Key Constraints**:
   - States: Reference `countries(id)` normally
   - Municipalities: Reference `states(country_id, id)` using composite FK
   - Housing: Reference both states and municipalities using composite FKs:
     - `FOREIGN KEY (country_id, state_id) REFERENCES states(country_id, id)`
     - `FOREIGN KEY (country_id, state_id, municipality_id) REFERENCES municipalities(country_id, state_id, id)`

4. **Conflict Resolution**:
   - States: Use `ON CONFLICT (country_id, id) DO NOTHING`
   - Municipalities: Use `ON CONFLICT (country_id, state_id, id) DO NOTHING`

### Why This Design:

- Municipality code 6 can exist in multiple states (e.g., Mexico state 9 "Iztacalco" and Mexico state 12 "Apaxtla")
- State code 1 can exist in multiple countries (e.g., Mexico state 1 "Aguascalientes" and US state 1 "Alabama") 
- Preserves exact JSON structure while preventing ID conflicts
- Enables multi-country expansion without schema changes

## Data Sources and Structure

### JSON Data Files:
- **geojson/states.json**: Contains state boundaries and codes for Mexico
- **geojson/municipalities.json**: Contains 2,436+ municipalities across 32 Mexican states
  - Format: `{state_code: X, mun_code: Y, mun_name: "Name"}`
  - State codes range from 1-32 (not consecutive, e.g., no state 13)
  - Municipality codes are unique only within each state

### Key Mexican States:
- State 1: Aguascalientes (11 municipalities)
- State 2: Baja California (5 municipalities) 
- State 3: Baja California Sur (5 municipalities)
- State 9: Distrito Federal (17 municipalities - Mexico City)
- State 12: Guerrero (81 municipalities)
- State 22: Querétaro (18 municipalities - project focus area)
- State 32: Zacatecas (58 municipalities)

### Countries:
- Country 1: Mexico
- Country 2: United States (for future expansion)

## Migration Files Structure

### Current Migrations:
- **00_initial_schema.sql**: Base schema with sample data
- **01_initial_permissions.sql**: Database permissions  
- **03_mexico_data_load.sql**: All 32 Mexican states + sample municipalities
- **04_mexico_municipalities_complete.sql**: ALL 2,436 municipalities from JSON

### Migration Dependencies:
1. Run 00_initial_schema.sql first (creates tables)
2. Run 03_mexico_data_load.sql (loads states)
3. Run 04_mexico_municipalities_complete.sql (loads all municipalities)

## Housing Data Integration

### Current Sample Data:
- Casa Amaray (State 22, Municipality 11 - El Marqués)
- Bosque de Olivos (State 22, Municipality 6 - Corregidora) 
- Parque Industrial (State 22, Municipality 14 - Querétaro)

### Housing Table Structure:
```sql
CREATE TABLE housing (
  id SERIAL PRIMARY KEY,
  name TEXT,
  housing_type_id INTEGER REFERENCES housing_types(id),
  country_id INTEGER NOT NULL REFERENCES countries(id),
  state_id INTEGER NOT NULL,
  municipality_id INTEGER,
  price INTEGER,
  percentage REAL,
  longitude REAL,
  latitude REAL,
  tag TEXT,
  url TEXT,
  FOREIGN KEY (country_id, state_id) REFERENCES states(country_id, id),
  FOREIGN KEY (country_id, state_id, municipality_id) REFERENCES municipalities(country_id, state_id, id)
);
```

## Data Generation Scripts

### For Complete Municipality Load:
```javascript
// Node.js script to generate SQL from JSON
const fs = require('fs');
const data = JSON.parse(fs.readFileSync('geojson/municipalities.json', 'utf8'));

const municipalitiesByState = {};
data.features.forEach(feature => {
  const stateCode = feature.properties.state_code;
  const munCode = feature.properties.mun_code;
  const munName = feature.properties.mun_name;
  
  if (!municipalitiesByState[stateCode]) {
    municipalitiesByState[stateCode] = [];
  }
  
  municipalitiesByState[stateCode].push({
    id: munCode,
    name: munName.replace(/'/g, "''") // Escape quotes
  });
});

// Generate INSERT statements...
```

## Query Examples

### Find municipalities by state:
```sql
SELECT * FROM municipalities WHERE country_id = 1 AND state_id = 9; -- DF
SELECT * FROM municipalities WHERE country_id = 1 AND state_id = 22; -- Querétaro
```

### Join with housing data:
```sql
SELECT h.name, m.name as municipality, s.name as state 
FROM housing h
JOIN municipalities m ON (h.country_id = m.country_id AND h.state_id = m.state_id AND h.municipality_id = m.id)
JOIN states s ON (h.country_id = s.country_id AND h.state_id = s.id);
```

### Example:
```sql
-- Valid: Same municipality ID in different states
INSERT INTO municipalities (id, name, country_id, state_id) VALUES (6, 'Iztacalco', 1, 9);
INSERT INTO municipalities (id, name, country_id, state_id) VALUES (6, 'Apaxtla', 1, 12);

-- Valid: Same state ID in different countries  
INSERT INTO states (id, name, country_id) VALUES (1, 'Aguascalientes', 1);
INSERT INTO states (id, name, country_id) VALUES (1, 'Alabama', 2);
```

## Important Notes

- **Never modify this schema** to use simple primary keys or auto-incrementing IDs for geographical entities
- **Always preserve JSON IDs** exactly as they appear in source files
- **Use composite foreign keys** when referencing geographical entities
- **All municipality names** with apostrophes must be escaped: `O'Connor` → `O''Connor`
- **State codes are not consecutive**: Missing state codes include 13, 19 (for historical reasons)
- **Municipality codes reset per state**: Each state starts municipality numbering from 1