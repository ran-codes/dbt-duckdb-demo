{{ config(materialized='external', format = 'csv') }}
select
  {{ dbt_utils.generate_surrogate_key(['user_id', 'order_date']) }} as id,
  user_id,
  order_date,
  count(*) as n
from {{ source('jaffle_shop', 'raw_orders') }} 
group by 1,2,3