{{ config(materialized='external', format = 'csv') }}
SELECT *
FROM {{ source('external_parquet', 'mtcars') }}