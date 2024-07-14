with stg_film_categories as (
    select * from dvd_rental.raw.film_category
)
select
    film_id,
    category_id,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_film_categories