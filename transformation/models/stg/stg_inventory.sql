with stg_inventory as (
    select * from dvd_rental.raw.inventory
)
select
    inventory_id as id,
    film_id,
    store_id,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_inventory

