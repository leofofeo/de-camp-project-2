{{ config(schema="dim") }}

with dim_staff as (
    select
        s.id,
        s.email,
        s.full_name,
        s.username
    from {{ ref('stg_staff') }} s
)
select *
from dim_staff