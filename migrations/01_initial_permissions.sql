-- Allow public read access to housing
CREATE POLICY "Public can read housing"
ON public.housing
FOR SELECT TO anon
USING (true);

-- Allow read access to all countries
CREATE POLICY "Allow read access to all countries"
ON countries
FOR SELECT
USING (true);

-- Allow read access to all states
CREATE POLICY "Allow read access to all states"
ON states
FOR SELECT
USING (true);

-- Allow read access to all municipalities
CREATE POLICY "Allow read access to all municipalities"
ON municipalities
FOR SELECT
USING (true);

-- Allow read access to all housing_types
CREATE POLICY "Allow read access to all housing_types"
ON housing_types
FOR SELECT
USING (true);

-- Allow read access to all amenity_types
CREATE POLICY "Allow read access to all amenity_types"
ON amenity_types
FOR SELECT
USING (true);

-- Allow read access to all housing_amenities
CREATE POLICY "Allow read access to all housing_amenities"
ON housing_amenities
FOR SELECT
USING (true);