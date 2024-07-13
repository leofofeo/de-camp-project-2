with stg_addresses as (
    select * from dvd_rental.raw.address
)
select
    address_id as id,
    phone as phone_number,
    address,
    city_id,
    address2 as address_2,
    district,
    postal_code,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_addresses