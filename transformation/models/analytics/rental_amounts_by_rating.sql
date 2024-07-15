{{ config (materialized="table", schema="analytics") }}

with rental_amounts_by_rating as (
    select f.rating, sum(rental_amount) as total_rental_amount, avg(rental_amount) as avg_rental_rate
    from {{ ref('fact_rentals') }} r
    left join {{ ref('dim_films')}} f on  f.id = r.film_id
    where r.rental_amount is not null
    group by f.rating
)
select * from rental_amounts_by_rating