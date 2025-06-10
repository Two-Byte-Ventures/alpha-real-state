import supabase from '@/lib/supabaseClient'; // Assuming @/ maps to your project root or src/

export async function getHousingLocationNames() {
  let dbStateNames = [];
  let dbMunNames = [];

  try {
    // Fetch distinct state_ids from the housing table
    const { data: housingStateEntries, error: housingStateError } = await supabase
      .from('housing')
      .select();

    if (housingStateError) {
      console.error('Error fetching housing state entries:', housingStateError.message);
    } else if (housingStateEntries && housingStateEntries.length > 0) {
      const stateIds = [...new Set(housingStateEntries.map(entry => entry.state_id))];
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
    }

    // Fetch distinct municipality_ids from the housing table
    const { data: housingMunEntries, error: housingMunError } = await supabase
      .from('housing')
      .select('municipality_id');

    if (housingMunError) {
      console.error('Error fetching housing municipality entries:', housingMunError.message);
    } else if (housingMunEntries && housingMunEntries.length > 0) {
      const munIds = [...new Set(housingMunEntries.map(entry => entry.municipality_id))];
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
  console.log('Fetched state names:', dbStateNames);
  console.log('Fetched municipality names:', dbMunNames);
  return { dbStateNames, dbMunNames };
}
