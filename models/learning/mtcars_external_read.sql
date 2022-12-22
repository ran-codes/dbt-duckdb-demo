{{ config(materialized='external') }}
SELECT gear, COUNT(*) AS n
FROM {{ source('external_parquet', 'mtcars') }}
GROUP BY gear