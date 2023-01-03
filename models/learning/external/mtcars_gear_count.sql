{{ config(materialized='external') }}
SELECT gear, COUNT(*) AS n
FROM mtcars
GROUP BY gear