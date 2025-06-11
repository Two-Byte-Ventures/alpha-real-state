import supabase from '@/lib/supabaseClient'; // Assuming @/ maps to your project root or src/

export async function getHousingLocationNames(minPrice, maxPrice) { // Added minPrice and maxPrice parameters
  let dbStateNames = [];
  let dbMunNames = [];

  try {
    // Fetch distinct state_ids and municipality_ids from housing entries within the price range
    let query = supabase.from('housing').select('state_id, municipality_id');

    if (minPrice !== undefined && minPrice !== null) {
      query = query.gte('price', minPrice);
    }
    if (maxPrice !== undefined && maxPrice !== null) {
      query = query.lte('price', maxPrice);
    }

    const { data: housingEntries, error: housingError } = await query;

    if (housingError) {
      console.error('Error fetching housing entries by price:', housingError.message);
      // Return empty arrays or handle as appropriate
      return { dbStateNames, dbMunNames };
    }

    if (housingEntries && housingEntries.length > 0) {
      // Extract unique state_ids, filtering out nulls
      const stateIds = [...new Set(housingEntries.map(entry => entry.state_id).filter(id => id != null))];
      if (stateIds.length > 0) {
        const { data: states, error: statesError } = await supabase
          .from('states')
          .select('name')
          .in('id', stateIds);

        if (statesError) {
          console.error('Error fetching state names:', statesError.message);
        } else {
          dbStateNames = states.map(s => s.name);
        }
      }

      // Extract unique municipality_ids, filtering out nulls
      const munIds = [...new Set(housingEntries.map(entry => entry.municipality_id).filter(id => id != null))];
      if (munIds.length > 0) {
        const { data: municipalities, error: munError } = await supabase
          .from('municipalities')
          .select('name')
          .in('id', munIds);

        if (munError) {
          console.error('Error fetching municipality names:', munError.message);
        } else {
          dbMunNames = municipalities.map(m => m.name);
        }
      }
    }
  } catch (error) {
    console.error('General error in getHousingLocationNames:', error.message);
  }
  return { dbStateNames, dbMunNames };
}
