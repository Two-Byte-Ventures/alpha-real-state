# Mexico Data Load Migration

This directory contains migration scripts to load Mexican states and municipalities data into the database.

## Migration Files

### 00_initial_schema.sql
Initial database schema with basic structure including:
- Countries table (Mexico, United States)
- States table with composite primary key
- Municipalities table with composite primary key  
- Housing and related tables
- Sample data for testing

### 03_mexico_data_load.sql  
Basic Mexico data load including:
- All Mexican states from states.json
- Sample municipalities from municipalities.json (includes DF and Guerrero)
- Demonstrates the composite key structure

### 04_mexico_municipalities_complete.sql
**COMPLETE municipalities dataset** including:
- ALL 2,436 municipalities from municipalities.json
- Covers all 32 Mexican states
- Preserves exact JSON IDs and names
- Uses composite primary keys for referential integrity

## Running the Migrations

1. **Initial Setup**: Run `00_initial_schema.sql` first
2. **Basic Data**: Run `03_mexico_data_load.sql` for states and sample municipalities
3. **Complete Data**: Run `04_mexico_municipalities_complete.sql` for ALL municipalities

## Key Features

- **Composite Primary Keys**: Allows same municipality IDs across different states
- **JSON ID Preservation**: Maintains exact IDs from source JSON files
- **Referential Integrity**: Proper foreign key constraints
- **Conflict Resolution**: Uses `ON CONFLICT DO NOTHING` to prevent duplicates

## Database Schema Notes

The schema uses composite primary keys:
- States: `(country_id, id)`
- Municipalities: `(country_id, state_id, id)`

This allows the same numerical ID to exist in different geographical contexts while maintaining referential integrity.

## Example Usage

```sql
-- Find all municipalities in Distrito Federal (state 9)
SELECT * FROM municipalities WHERE country_id = 1 AND state_id = 9;

-- Find all municipalities in Guerrero (state 12)  
SELECT * FROM municipalities WHERE country_id = 1 AND state_id = 12;

-- Join with housing data
SELECT h.name, m.name as municipality, s.name as state 
FROM housing h
JOIN municipalities m ON (h.country_id = m.country_id AND h.state_id = m.state_id AND h.municipality_id = m.id)
JOIN states s ON (h.country_id = s.country_id AND h.state_id = s.id);
```
