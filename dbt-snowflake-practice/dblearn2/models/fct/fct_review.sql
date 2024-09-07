{{
    config(
    materialized = 'incremental',
    on_schema_change = 'fail'
    )
}}

with src_review AS (
    SELECT * FROM {{ref("src_review")}}
)

SELECT * FROM src_review
where review_text is not NULL

{% if is_incremental() %}
    AND review_date > (SELECT max(review_date) from {{this}})
{% endif %}

