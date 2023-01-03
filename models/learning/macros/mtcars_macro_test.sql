{{ config(materialized='external') }}
SELECT 
  gear, 
  hp,
  {{ gear_plus_one('gear') }} as gear_plus_one,
  {{ hp_recoding(hp) }} as hp_grp
FROM {{ source('external_parquet', 'mtcars') }}