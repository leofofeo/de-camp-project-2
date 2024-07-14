with stg_payments as (
    select amount, staff_id, rental_id, payment_id, customer_id, payment_date, _airbyte_extracted_at
    from dvd_rental.raw.payment
)
select
    payment_id as id,
    amount, 
    staff_id,
    rental_id,
    customer_id,
    payment_date,
    _airbyte_extracted_at as extracted_at
from stg_payments