SELECT * FROM AIRBNB.DEV.dim_listing_cleaned
WHERE minimum_nights < 1
LIMIT 10