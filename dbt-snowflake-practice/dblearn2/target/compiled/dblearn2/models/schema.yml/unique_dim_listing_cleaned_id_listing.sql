
    
    

select
    id_listing as unique_field,
    count(*) as n_records

from AIRBNB.DEV.dim_listing_cleaned
where id_listing is not null
group by id_listing
having count(*) > 1


