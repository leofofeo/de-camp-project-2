{{ config(schema="dim")}}

with dim_actors as (
    select id, full_name from {{ ref('stg_actors') }}
)
select *
from dim_actors