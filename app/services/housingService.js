import supabase from '@/lib/supabaseClient'; // Assuming @/ maps to your project root or src/

export async function getFilteredHousingData(minPrice, maxPrice, housingTypeFilters) {
  let query = supabase
    .from('housing')
    .select(`
      id,
      name,
      price,
      percentage,
      housing_types (name),
      states (name),
      municipalities (name),
      tag,
      url,
      longitude,
      latitude,
      housing_type_id
    `);

  if (minPrice !== undefined && minPrice !== null) {
    query = query.gte('price', minPrice);
  }
  if (maxPrice !== undefined && maxPrice !== null) {
    query = query.lte('price', maxPrice);
  }

  if (housingTypeFilters && housingTypeFilters.length > 0) {
    const typeIds = housingTypeFilters.map(type => {
      if (type === 'house') return 1;
      if (type === 'plaza') return 2;
      if (type === 'industrial') return 3;
      return null;
    }).filter(id => id !== null);

    if (typeIds.length > 0) {
      query = query.in('housing_type_id', typeIds);
    }
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
    assets: {
      tag: item.tag,
      url: item.url
    },
    coordinates: [item.longitude, item.latitude]
  }));
}
