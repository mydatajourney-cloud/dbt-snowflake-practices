
  create or replace   view AIRBNB.DEV.src_listing
  
   as (
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
FROM raw_listings
  );

