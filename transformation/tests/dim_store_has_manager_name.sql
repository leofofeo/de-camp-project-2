select *
from
    {{ ref('dim_stores')}}
left join {{ ref('dim_staff')}} on dim_stores.manager_id = dim_staff.id
where manager_name != dim_staff.full_name
limit 10