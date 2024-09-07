
  
    

        create or replace transient table AIRBNB.DEV.dim_listing_w_hosts
         as
        (WITH 
l AS(
    SELECT * FROM AIRBNB.DEV.dim_listing_cleaned
),

h AS(
    SELECT * FROM AIRBNB.DEV.dim_hosts_cleaned
)

SELECT 
    l.id_listing,
    l.name_listing,
    l.minimum_nights,
    l.room_type,
    l.price,
    l.host_id,
    h.host_name,
    h.is_superhost as host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) as updated_at
FROM l
LEFT JOIN h ON (l.host_id = h.host_id)
        );
      
  