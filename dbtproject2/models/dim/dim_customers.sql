{{ config(schema="dim") }}

with dim_customers as (
    select 
        id,
        email,
        full_name as name,
        case when active = 1 then 'yes' else 'no' end is_active
    from {{ ref('stg_customers') }}

)
select * from dim_customers