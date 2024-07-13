with stg_customers as (
    select customer_id, email, active, store_id, last_name, first_name, create_date, last_update, _airbyte_extracted_at
    from dvd_rental.raw.customer
)
select
    customer_id as id,
    email,
    active,
    store_id,
    last_name,
    first_name,
    first_name || ' ' || last_name as full_name,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_customers