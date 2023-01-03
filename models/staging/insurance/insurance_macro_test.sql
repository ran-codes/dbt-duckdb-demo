{{ config(materialized='external', format = 'csv') }}
SELECT 
  *, 
  {{recode_age_general_group('age')}} as age_grp,
FROM {{ source('health_insurance', 'insurance3r2.csv') }}