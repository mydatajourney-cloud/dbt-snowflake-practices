select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id_listing
from AIRBNB.DEV.dim_listing_cleaned
where id_listing is null



      
    ) dbt_internal_test