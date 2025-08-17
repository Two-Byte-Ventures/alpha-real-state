BEGIN;

-- 0. Create states table
-- Stores unique country names
CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  UNIQUE (name) -- Ensures municipality name is unique within its state
);

INSERT INTO countries (id, name) VALUES (1, 'Mexico') ON CONFLICT (name) DO NOTHING;
INSERT INTO countries (id, name) VALUES (2, 'United States') ON CONFLICT (name) DO NOTHING;

-- 1. Create states table
-- Stores unique state names
-- State IDs from JSON are only unique within each country, so we use composite primary key
CREATE TABLE states (
  id INTEGER NOT NULL,
  country_id INTEGER NOT NULL REFERENCES countries(id), -- Foreign key to countries table
  name TEXT NOT NULL,
  PRIMARY KEY (country_id, id), -- Composite primary key: state id is unique within each country
  UNIQUE (name, country_id) -- Ensures state name is unique within its country
);

INSERT INTO states (id, country_id, name) VALUES (22, 1, 'Querétaro') ON CONFLICT (country_id, id) DO NOTHING;

-- 2. Create municipalities table
-- Stores municipality names, linked to a state
-- Municipality IDs from JSON are only unique within each state and country, so we use composite primary key
CREATE TABLE municipalities (
  id INTEGER NOT NULL,
  name TEXT NOT NULL,
  country_id INTEGER NOT NULL REFERENCES countries(id), -- Foreign key to countries table
  state_id INTEGER NOT NULL,
  PRIMARY KEY (country_id, state_id, id), -- Composite primary key: municipality id is unique within each country/state
  UNIQUE (name, country_id, state_id), -- Ensures municipality name is unique within its state
  FOREIGN KEY (country_id, state_id) REFERENCES states(country_id, id) -- Foreign key to states using composite key
);

INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'El Marqués', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Corregidora', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Querétaro', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- 3. Create housing_types table
-- Stores different types of housing (e.g., house, plaza)
CREATE TABLE housing_types (
  id INTEGER PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

-- Insert unique housing types
INSERT INTO housing_types (id, name) VALUES (1, 'house') ON CONFLICT (name) DO NOTHING;
INSERT INTO housing_types (id, name) VALUES (2, 'plaza') ON CONFLICT (name) DO NOTHING;
INSERT INTO housing_types (id, name) VALUES (3, 'industrial') ON CONFLICT (name) DO NOTHING;

-- 4. Create housing table
-- Main table for housing listings
CREATE TABLE housing (
  id SERIAL PRIMARY KEY, -- Auto-incrementing ID
  name TEXT,
  housing_type_id INTEGER REFERENCES housing_types(id),
  country_id INTEGER NOT NULL REFERENCES countries(id), -- Foreign key to countries table
  state_id INTEGER NOT NULL,
  municipality_id INTEGER,
  price INTEGER,
  percentage REAL,
  longitude REAL,
  latitude REAL,
  tag TEXT,
  url TEXT,
  -- Foreign key constraints using composite keys
  FOREIGN KEY (country_id, state_id) REFERENCES states(country_id, id),
  FOREIGN KEY (country_id, state_id, municipality_id) REFERENCES municipalities(country_id, state_id, id)
);

-- Populate housing and housing_assets tables --

-- Item 1: Casa Amaray
INSERT INTO housing (name, housing_type_id, percentage, price, country_id, state_id, municipality_id, longitude, latitude, tag, url) VALUES (
  'Casa Amaray',
  1, -- house
  8.2,
  4900000,
  1, -- Mexico country
  22, -- Querétaro state
  11, -- El Marqués municipality
  -100.33671844059357,  -- longitude
  20.672106355565433,   -- latitude
  'casa_amaray',
  'mx/qro/casa_amaray'
);

-- Item 2: Bosque de Olivos
INSERT INTO housing (name, housing_type_id, percentage, price, country_id, state_id, municipality_id, longitude, latitude, tag, url) VALUES (
  'Bosque de Olivos',
  2, -- plaza
  10,
  3400000,
  1, -- Mexico country
  22, -- Querétaro state
  6, -- Corregidora municipality
  -100.4339845,  -- longitude
  20.5356594,    -- latitude
  'bosque_olivos',
  'mx/qro/bosque_olivos'
);

-- Item 3: Parque Industrial
INSERT INTO housing (name, housing_type_id, percentage, price, country_id, state_id, municipality_id, longitude, latitude, tag, url) VALUES (
  'Parque Industrial',
  3, -- industrial
  4.7,
  10000000,
  1, -- Mexico country
  22, -- Querétaro state
  14, -- Querétaro municipality
  -100.4518962, -- longitude
  20.8241001,   -- latitude
  'parque_industrial',
  'mx/qro/parque_industrial'
);

-- 5. Create amenity_types table
-- Stores different types of amenities (e.g., bathroom, parking, gym, pool, etc.)
CREATE TABLE amenity_types (
  id INTEGER PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

-- Insert initial amenity types
INSERT INTO amenity_types (id, name) VALUES (1, 'total_area') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (2, 'constructed_area') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (3, 'bathroom') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (4, 'parking_space') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (5, 'room') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (6, 'years_built') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (7, 'gym') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (8, 'pool') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (9, 'clubhouse') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (10, 'controlled_access') ON CONFLICT (name) DO NOTHING;
INSERT INTO amenity_types (id, name) VALUES (11, 'terrace') ON CONFLICT (name) DO NOTHING;

-- 6. Create housing_amenities table
-- Stores the relationship between housing and its amenities
CREATE TABLE housing_amenities (
  id SERIAL PRIMARY KEY, -- Auto-incrementing ID
  housing_id INTEGER NOT NULL REFERENCES housing(id) ON DELETE CASCADE,
  amenity_type_id INTEGER NOT NULL REFERENCES amenity_types(id),
  value REAL, -- Can be fractional for area, integer for count
  UNIQUE (housing_id, amenity_type_id)
);

INSERT INTO housing_amenities (housing_id, amenity_type_id, value) VALUES
(1, 1, 200.0),
(1, 2, 150.0),
(1, 3, 3.0),
(1, 4, 2.0),
(1, 5, 4.0),
(1, 6, 5.0),
(2, 1, 300.0),
(2, 2, 250.0),
(2, 3, 4.0),
(2, 4, 3.0),
(2, 5, 5.0),
(2, 7, NULL),
(2, 8, NULL),
(3, 1, 100),
(3, 2, 120);

COMMIT;