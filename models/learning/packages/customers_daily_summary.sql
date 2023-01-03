{{ config(materialized='external', format = 'csv') }}
select user_id,
order_date,
count(*)
from raw_orders
group by 1,2