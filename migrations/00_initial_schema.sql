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
CREATE TABLE states (
  id INTEGER PRIMARY KEY,
  country_id INTEGER NOT NULL REFERENCES countries(id), -- Foreign key to countries table
  name TEXT UNIQUE NOT NULL,
  UNIQUE (name, country_id) -- Ensures state name is unique within its country
);

INSERT INTO states (id, country_id, name) VALUES (22, 1, 'Querétaro') ON CONFLICT (name, country_id) DO NOTHING;

-- 2. Create municipalities table
-- Stores municipality names, linked to a state
CREATE TABLE municipalities (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  country_id INTEGER NOT NULL REFERENCES countries(id), -- Foreign key to countries table
  state_id INTEGER NOT NULL REFERENCES states(id),
  UNIQUE (name, country_id, state_id) -- Ensures municipality name is unique within its state
);

INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'El Marqués', 1, 22) ON CONFLICT (name, country_id, state_id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Corregidora', 1, 22) ON CONFLICT (name, country_id, state_id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Querétaro', 1, 22) ON CONFLICT (name, country_id, state_id) DO NOTHING;

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
  id INTEGER PRIMARY KEY, -- Using the ID from the JSON file
  name TEXT,
  housing_type_id INTEGER REFERENCES housing_types(id),
  country_id INTEGER NOT NULL REFERENCES countries(id), -- Foreign key to countries table
  state_id INTEGER NOT NULL REFERENCES states(id), -- Foreign key to states table
  municipality_id INTEGER REFERENCES municipalities(id),
  price INTEGER,
  percentage REAL,
  longitude REAL,
  latitude REAL,
  tag TEXT,
  url TEXT
);

-- Populate housing and housing_assets tables --

-- Item 1: Casa Amaray
INSERT INTO housing (id, name, housing_type_id, percentage, price, country_id, state_id, municipality_id, longitude, latitude, tag, url) VALUES (
  1,
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
INSERT INTO housing (id, name, housing_type_id, percentage, price, country_id, state_id, municipality_id, longitude, latitude, tag, url) VALUES (
  2,
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
INSERT INTO housing (id, name, housing_type_id, percentage, price, country_id, state_id, municipality_id, longitude, latitude, tag, url) VALUES (
  3,
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

COMMIT;