-- 03_mexico_data_load.sql
-- Script to insert states and municipalities data from JSON files for Mexico
-- 
-- Municipality IDs from JSON are preserved as-is using composite primary key (state_id, id)
-- This allows the same municipality ID to exist in different states

BEGIN;

-- Insert Mexico states from states.json file
-- Note: All states belong to Mexico (country_id = 1) as per the existing schema
-- State codes from JSON are used as the primary key ID (globally unique)
INSERT INTO states (id, country_id, name) VALUES
(1, 1, 'Aguascalientes') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(2, 1, 'Baja California') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(3, 1, 'Baja California Sur') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(6, 1, 'Colima') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(7, 1, 'Chiapas') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(8, 1, 'Chihuahua') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(9, 1, 'Distrito Federal') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(10, 1, 'Durango') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(11, 1, 'Guanajuato') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(12, 1, 'Guerrero') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(14, 1, 'Jalisco') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(15, 1, 'México') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(16, 1, 'Michoacán de Ocampo') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(17, 1, 'Morelos') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(18, 1, 'Nayarit') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(20, 1, 'Oaxaca') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(22, 1, 'Querétaro') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(25, 1, 'Sinaloa') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(26, 1, 'Sonora') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(27, 1, 'Tabasco') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(32, 1, 'Zacatecas') ON CONFLICT (country_id, id) DO NOTHING;

-- Insert municipalities from municipalities.json file
-- Municipality IDs from JSON are preserved exactly as they are
-- Using composite primary key (country_id, state_id, id) allows same ID in different countries/states

-- State 1 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Aguascalientes', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Asientos', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Calvillo', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Cosío', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Jesús María', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Pabellón de Arteaga', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Rincón de Romos', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'San José de Gracia', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Tepezalá', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'El Llano', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'San Francisco de los Romo', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 2 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Ensenada', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Mexicali', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Tecate', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Tijuana', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Playas de Rosarito', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 3 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Comondú', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Mulegé', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'La Paz', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Los Cabos', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Loreto', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- SCHEMA NOTES:
-- 1. Municipality IDs are preserved exactly as they appear in the JSON
-- 2. Composite primary key (country_id, state_id, id) allows same municipality ID across countries/states
-- 3. Example: municipality ID 6 exists in both state 9 (Iztacalco) and state 12 (Apaxtla)
-- 4. Foreign keys from housing table reference the composite key (country_id, state_id, municipality_id)
-- 5. This ensures perfect data integrity across countries and states

-- NOTE: This file contains basic states and a sample of municipalities.
-- For the COMPLETE municipalities dataset, run migration 04_mexico_municipalities_complete.sql
-- which contains ALL municipalities from the municipalities.json file.

-- Add more states that might be referenced but not fully shown
INSERT INTO states (id, country_id, name) VALUES
(4, 1, 'Campeche') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(5, 1, 'Coahuila de Zaragoza') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(13, 1, 'Hidalgo') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(19, 1, 'Nuevo León') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(21, 1, 'Puebla') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(23, 1, 'Quintana Roo') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(24, 1, 'San Luis Potosí') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(28, 1, 'Tamaulipas') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(29, 1, 'Tlaxcala') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(30, 1, 'Veracruz de Ignacio de la Llave') ON CONFLICT (country_id, id) DO NOTHING;
INSERT INTO states (id, country_id, name) VALUES
(31, 1, 'Yucatán') ON CONFLICT (country_id, id) DO NOTHING;

COMMIT;

-- Usage Notes:
-- 1. This script loads the basic state and municipality structure for Mexico
-- 2. The IDs used match the codes from the original JSON files
-- 3. All entries use ON CONFLICT DO NOTHING to prevent duplicate insertions
-- 4. To load the complete dataset, parse the full JSON files and extract all unique entries
-- 5. The JSON files contain geographic coordinates that could be stored in additional columns if needed
