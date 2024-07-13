{{ config(schema="dim")}}

with dim_actors as (
    select * from {{ ref('stg_actors') }}
)
select *
from dim_actors