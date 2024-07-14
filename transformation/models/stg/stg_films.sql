 with stg_films as (
    select
        film_id,
        title,
        length,
        rating,
        fulltext,
        description,
        language_id,
        rental_rate,
        release_year,
        rental_duration,
        replacement_cost,
        special_features,
        last_update, 
        _airbyte_extracted_at
    from dvd_rental.raw.film
)
select
    film_id as id,
    title,
    length,
    rating,
    fulltext as full_text,
    description,
    language_id,
    rental_rate,
    release_year,
    rental_duration,
    replacement_cost,
    special_features,
    last_update as updated_at,
    _airbyte_extracted_at as extracted_at
from stg_films