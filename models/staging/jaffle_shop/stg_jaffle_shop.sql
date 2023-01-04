{{ config(materialized='external', format = 'csv') }}
with

source as (
  select * from {{ source('jaffle_shop', 'raw_customers')}}
),

staged as (
  select
    id as cus
)

SELECT 
  *, 
  {{recode_age_general_group('age')}} as age_grp,
FROM {{ source('health_insurance', 'insurance3r2.csv') }}