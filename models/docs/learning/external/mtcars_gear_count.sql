{{ config(materialized='external') }}
SELECT gear, COUNT(*) AS n
FROM {{ source('R_datasets', 'mtcars.csv') }}  
GROUP BY gear