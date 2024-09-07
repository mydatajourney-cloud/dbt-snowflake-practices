

with  __dbt__cte__src_review as (
with raw_reviews as (
   SELECT * FROM AIRBNB.RAW.RAW_REVIEWS-- Use an admin role
)

SELECT 
    listing_id,
    date as review_date,
    comments as review_text,
    sentiment as review_sentiment
FROM raw_reviews
), src_review AS (
    SELECT * FROM __dbt__cte__src_review
)

SELECT * FROM src_review
where review_text is not NULL


    AND review_date > (SELECT max(review_date) from AIRBNB.DEV.fct_review)
