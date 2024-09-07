select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
 SELECT * FROM AIRBNB.DEV.dim_listing_cleaned WHERE
 ID_LISTING IS NULL OR
 NAME_LISTING IS NULL OR
 ROOM_TYPE IS NULL OR
 MINIMUM_NIGHTS IS NULL OR
 HOST_ID IS NULL OR
 PRICE IS NULL OR
 CREATED_AT IS NULL OR
 UPDATED_AT IS NULL OR
 
 FALSE

      
    ) dbt_internal_test