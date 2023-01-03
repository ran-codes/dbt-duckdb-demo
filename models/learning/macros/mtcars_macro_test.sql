{{ config(materialized='external', format = 'csv') }}
SELECT 
  gear, 
  hp,
  {{ gear_plus_one('gear') }} as gear_plus_one
FROM {{ source('external_parquet', 'mtcars') }}