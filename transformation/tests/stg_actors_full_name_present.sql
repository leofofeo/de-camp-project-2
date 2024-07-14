select *
from
    {{ ref('stg_actors')}}
where full_name != first_name || ' ' || last_name
limit 10