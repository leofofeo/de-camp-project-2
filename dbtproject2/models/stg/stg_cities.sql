with stg_cities as (
    select * from dvd_rental.raw.city
)
select
    city_id as id,
    country_id,
    city as name,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_cities
