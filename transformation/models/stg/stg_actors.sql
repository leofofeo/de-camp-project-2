with stg_actors as (
    select * from dvd_rental.raw.actor
)
select
    actor_id as id,
    last_name,
    first_name,
    first_name || ' ' || last_name as full_name,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_actors