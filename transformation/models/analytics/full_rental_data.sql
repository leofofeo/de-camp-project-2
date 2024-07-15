{{ config (materialized="table", schema="analytics") }}

with full_rental_data as (
select
    r.id as rental_id, r.rental_date, r.rental_amount, r.rental_duration, 
    f.title as film_title, f.length as film_length, f.rating as film_rating, f.language as film_language, f.category as film_category,
    c.email as customer_email, c.name as customer_name, c.is_active as active_customer,
    s.manager_name as store_manager_name, s.city as store_city,s.country as store_country
from {{ref('fact_rentals')}} r
left join {{ref('dim_films')}} f on f.id = r.film_id
left join {{ref('dim_customers')}} c on c.id = r.customer_id
left join {{ref('dim_stores')}} s on c.id = r.store_id
where r.rental_amount is not null
)
select *
from full_rental_data