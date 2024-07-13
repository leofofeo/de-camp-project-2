with stg_stores as (
    select * from dvd_rental.raw.store
)
select
    store_id as id,
    address_id,
    manager_staff_id as manager_id,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_stores