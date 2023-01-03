{{ config(materialized='external', format = 'csv') }}
SELECT 
  age, 
  CASE
    WHEN (age <= 20.0) THEN ('0-20')
    WHEN (age <= 60.0) THEN ('21-60')
    ELSE ('60+')
  END AS age_grp, 
  region,
  smoker, 
  charges
FROM {{ source('external_csv', 'insurance3r2') }}