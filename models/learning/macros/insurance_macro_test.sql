{{ config(materialized='external', format = 'csv') }}
SELECT *
FROM {{ source('external_csv', 'insurance3r2') }}