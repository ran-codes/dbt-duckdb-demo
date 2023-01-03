{{ config(materialized='external') }}
SELECT gear, COUNT(*) AS n
FROM {{ source('external_csv', 'mtcars') }}  
GROUP BY gear