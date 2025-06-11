import supabase from '@/lib/supabaseClient'; // Assuming @/ maps to your project root or src/

export async function getFilteredHousingData(minPrice, maxPrice) {
  let query = supabase
    .from('housing')
    .select(`
      id,
      name,
      price,
      percentage,
      housing_types (name),
      states (name),
      municipalities (name)
    `);

  if (minPrice !== undefined && minPrice !== null) {
    query = query.gte('price', minPrice);
  }
  if (maxPrice !== undefined && maxPrice !== null) {
    query = query.lte('price', maxPrice);
  }

  const { data, error } = await query;

  if (error) {
    console.error('Error fetching filtered housing data:', error.message);
    return [];
  }

  return data.map(item => ({
    id: item.id,
    name: item.name, // dwelling name
    price: item.price,
    percentage: item.percentage,
    type: item.housing_types ? item.housing_types.name : null,
    state_name: item.states ? item.states.name : null,
    mun_name: item.municipalities ? item.municipalities.name : null,
  }));
}
