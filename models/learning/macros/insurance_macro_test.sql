{{ config(materialized='external', format = 'csv') }}
SELECT 
  *, 
  {{recode_age_general_group('age')}} as age_grp,
FROM {{ source('external_csv', 'insurance3r2') }}