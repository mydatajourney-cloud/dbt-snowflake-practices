{{
  config(
    materialized = 'view',
    )
}}
WITH src_listings AS (
    SELECT * FROM {{ref("src_listing")}}
)

SELECT 
    id_listing,
    name_listing,
    room_type,
    CASE 
        WHEN minimum_nights = 0 THEN 1 
        ELSE minimum_nights
    END AS minimum_nights,
    host_id,
    REPLACE (
        price,
        '$'
    ) :: NUMBER (
        10, 
        2
    ) AS price,
    created_at,
    updated_at
FROM 
    src_listings

