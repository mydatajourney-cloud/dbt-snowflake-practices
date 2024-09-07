select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT * FROM AIRBNB.DEV.dim_listing_cleaned
WHERE minimum_nights < 1
LIMIT 10
      
    ) dbt_internal_test