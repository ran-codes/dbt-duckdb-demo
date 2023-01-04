{{ config(materialized='external', format ='csv') }}
select 
  order_id,
  amount
from {{ source('jaffle_shop', 'raw_payments') }}  