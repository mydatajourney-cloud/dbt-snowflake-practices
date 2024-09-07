
  
    

        create or replace transient table AIRBNB.DEV.dim_listing_cleaned
         as
        (WITH  __dbt__cte__src_listing as (
with raw_listings as (
   SELECT * FROM AIRBNB.RAW.RAW_LISTINGS-- Use an admin role
)

SELECT 
    id as id_listing,
    name as name_listing,
    room_type,
    minimum_nights,
    host_id,
    price,
    created_at,
    updated_at
FROM raw_listings
), src_listings AS (
    SELECT * FROM __dbt__cte__src_listing
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
        );
      
  