select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    id_listing as unique_field,
    count(*) as n_records

from AIRBNB.DEV.dim_listing_cleaned
where id_listing is not null
group by id_listing
having count(*) > 1



      
    ) dbt_internal_test