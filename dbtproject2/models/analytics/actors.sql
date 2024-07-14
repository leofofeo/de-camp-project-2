{{ config(schema="analytics")}}

with actors as (
    select * from dvd_rental.dbt_stg.stg_actors
)
select
    *
from actors