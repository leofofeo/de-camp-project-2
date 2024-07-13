select *
from
    {{ ref('dim_actors')}}
where full_name != first_name || ' ' || last_name
limit 10