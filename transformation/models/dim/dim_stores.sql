{{ config(schema="dim") }}

with dim_stores as (
    select
        s.id,
        st.full_name as manager_name,
        s.manager_id,
        a.address as address_1, 
        a.address_2, 
        a.district,
        a.postal_code,
        ci.name as city,
        co.name as country
    from {{ ref('stg_stores') }} s
    left join {{ ref('stg_staff') }} st on st.id = s.manager_id
    left join {{ ref('stg_addresses') }} a on a.id = s.address_id
    left join {{ ref('stg_cities') }} ci on ci.id = a.city_id
    left join {{ ref('stg_countries') }} co on co.id = ci.country_id
)
select *
from dim_stores