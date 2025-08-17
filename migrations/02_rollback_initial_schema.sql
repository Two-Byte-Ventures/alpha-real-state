BEGIN;

-- Rollback script for 00_initial_schema.sql
-- This script removes all tables and data created in the initial schema migration
-- Run this script to completely undo the initial database setup

-- Drop tables in reverse order of creation to avoid foreign key constraint issues

-- 6. Drop housing_amenities table (depends on housing and amenity_types)
DROP TABLE IF EXISTS housing_amenities CASCADE;

-- 5. Drop amenity_types table
DROP TABLE IF EXISTS amenity_types CASCADE;

-- 4. Drop housing table (depends on housing_types, countries, states, municipalities)
DROP TABLE IF EXISTS housing CASCADE;

-- 3. Drop housing_types table
DROP TABLE IF EXISTS housing_types CASCADE;

-- 2. Drop municipalities table (depends on countries and states)
DROP TABLE IF EXISTS municipalities CASCADE;

-- 1. Drop states table (depends on countries)
DROP TABLE IF EXISTS states CASCADE;

-- 0. Drop countries table (no dependencies)
DROP TABLE IF EXISTS countries CASCADE;

COMMIT;
