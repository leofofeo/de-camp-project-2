with stg_rentals as (
    select * from dvd_rental.raw.rental
)
select
    rental_id as id,
    staff_id,
    customer_id,
    inventory_id,
    rental_date,
    return_date,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_rentals