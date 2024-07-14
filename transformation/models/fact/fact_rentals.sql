{{ config(schema="fact")}}

with fact_rentals as (
    select 
        r.id, 
        r.rental_date, 
        r.return_date, 
        p.amount as rental_amount, 
        f.rental_duration,  
        f.id as film_id, 
        p.id as payment_id, 
        r.customer_id, 
        r.staff_id, 
        i.store_id
    from {{ ref('stg_rentals') }} r
    left join {{ ref('stg_inventory') }} i on r.inventory_id = i.id
    left join {{ ref('stg_films') }} f on i.film_id = f.id
    left join {{ ref('stg_payments') }} p on r.id = p.rental_id
)
select *
from fact_rentals