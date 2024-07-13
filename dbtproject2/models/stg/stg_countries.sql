with stg_countries as (
    select * from dvd_rental.raw.country
)
select
    country_id as id,
    country as name,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_countries