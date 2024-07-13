with stg_categories as (
    select * from dvd_rental.raw.category
)
select
    category_id as id,
    name,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_categories