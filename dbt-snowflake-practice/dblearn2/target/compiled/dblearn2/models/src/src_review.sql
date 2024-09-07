with raw_reviews as (
   SELECT * FROM AIRBNB.RAW.RAW_REVIEWS-- Use an admin role
)

SELECT 
    listing_id,
    date as review_date,
    comments as review_text,
    sentiment as review_sentiment
FROM raw_reviews