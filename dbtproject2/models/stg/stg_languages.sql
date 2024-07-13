with stg_languages as (
    select * from dvd_rental.raw.language
)
select
    language_id as id,
    name,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_languages