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

export async function getHousingDataById(id) {
  try {
    const { data, error } = await supabase
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
      `)
      .eq('id', id)
      .single();

    if (error) {
      throw error;
    }

    return {
      id: data.id,
      name: data.name,
      price: data.price,
      percentage: data.percentage,
      type: data.housing_types ? data.housing_types.name : null,
      state_name: data.states ? data.states.name : null,
      mun_name: data.municipalities ? data.municipalities.name : null,
      assets: {
        tag: data.tag,
        url: data.url
      },
      coordinates: [data.longitude, data.latitude]
    };
  } catch (error) {
    console.error('Error fetching housing data by ID:', error.message);
    throw error;
  }
}

export async function addHousingItem(housingData) {
  try {
    // Get housing type ID based on type name
    const getHousingTypeId = (typeName) => {
      switch (typeName) {
        case 'house': return 1;
        case 'plaza': return 2;
        case 'industrial': return 3;
        default: return 1; // Default to house
      }
    };

    // Get state ID based on state name
    const getStateId = async (stateName) => {
      if (!stateName) return 22; // Default to Querétaro
      
      const { data, error } = await supabase
        .from('states')
        .select('id')
        .eq('name', stateName);
      
      if (error) {
        console.error(`Error querying states:`, error);
        console.warn(`State '${stateName}' query failed, using default (Querétaro)`);
        return 22; // Default to Querétaro
      }
      
      if (!data || data.length === 0) {
        console.warn(`State '${stateName}' not found, using default (Querétaro)`);
        return 22; // Default to Querétaro
      }
      
      return data[0].id;
    };

    // Get municipality ID based on municipality name and state ID
    const getMunicipalityId = async (munName, stateId) => {
      if (!munName) return 11; // Default to El Marqués
      
      const { data, error } = await supabase
        .from('municipalities')
        .select('id')
        .eq('name', munName)
        .eq('state_id', stateId);
      
      if (error) {
        console.error(`Error querying municipalities:`, error);
        console.warn(`Municipality '${munName}' query failed in state ${stateId}, using default (El Marqués)`);
        return 11; // Default to El Marqués
      }
      
      if (!data || data.length === 0) {
        console.warn(`Municipality '${munName}' not found in state ${stateId}, using default (El Marqués)`);
        return 11; // Default to El Marqués
      }
      
      return data[0].id;
    };

    // Get the state ID first (either from the provided state_id or by looking up state_name)
    const stateId = housingData.state_id || await getStateId(housingData.state_name);
    
    // Get the municipality ID (either from the provided municipality_id or by looking up mun_name)
    const municipalityId = housingData.municipality_id || await getMunicipalityId(housingData.mun_name, stateId);

    console.log(`Resolved state '${housingData.state_name}' to ID: ${stateId}`);
    console.log(`Resolved municipality '${housingData.mun_name}' to ID: ${municipalityId}`);

    // Prepare the data for insertion (ID will be auto-generated)
    const insertData = {
      name: housingData.name,
      price: parseFloat(housingData.price),
      percentage: housingData.percentage ? parseFloat(housingData.percentage) : null,
      housing_type_id: getHousingTypeId(housingData.type),
      longitude: parseFloat(housingData.longitude),
      latitude: parseFloat(housingData.latitude),
      tag: housingData.tag || null,
      url: housingData.url || null,
      // Use resolved IDs instead of hardcoded defaults
      country_id: housingData.country_id || 1, // Default to Mexico
      state_id: stateId,
      municipality_id: municipalityId
    };

    const { data, error } = await supabase
      .from('housing')
      .insert([insertData])
      .select()
      .single();

    if (error) {
      throw error;
    }

    return data;
  } catch (error) {
    console.error('Error adding housing item:', error.message);
    throw error;
  }
}
