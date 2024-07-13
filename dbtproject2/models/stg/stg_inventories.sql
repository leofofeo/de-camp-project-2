with stg_inventories as (
    select * from dvd_rental.raw.inventory
)
select
    film_id,
    store_id,
    inventory_id,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_inventories