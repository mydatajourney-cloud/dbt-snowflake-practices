-- back compat for old kwarg name
  
  begin;
    

        insert into AIRBNB.DEV.fct_review ("LISTING_ID", "REVIEW_DATE", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "LISTING_ID", "REVIEW_DATE", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_review__dbt_tmp
        );
    commit;