{{ config(schema="dim") }}


with dim_films as (
    select 
        f.id, 
        f.title, 
        f.length, 
        f.rating, 
        f.description, 
        l.name as language, 
        c.name as category
    from {{ ref('stg_films') }} f
    left join {{ ref('stg_languages') }} l on l.id = f.language_id
    left join {{ ref('stg_film_categories') }} fc on fc.film_id = f.id
    left join {{ ref('stg_categories') }} c on c.id = fc.category_id
)
select *
from dim_films