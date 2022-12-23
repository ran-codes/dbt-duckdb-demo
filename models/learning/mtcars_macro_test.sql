{{ config(materialized='external') }}
SELECT 
  gear, 
  {{ gear_plus_one('gear') }} as gear_plus_one
FROM {{ source('external_parquet', 'mtcars') }}