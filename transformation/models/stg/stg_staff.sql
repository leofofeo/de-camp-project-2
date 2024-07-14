with stg_staff as (
    select 
        staff_id,
        email,
        store_id,
        username,
        last_name,
        first_name,
        address_id,
        last_update,
        _airbyte_extracted_at
    from dvd_rental.raw.staff
)
select
    staff_id as id,
    email,
    store_id,
    username,
    last_name,
    first_name,
    first_name || ' ' || last_name as full_name,
    address_id,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_staff