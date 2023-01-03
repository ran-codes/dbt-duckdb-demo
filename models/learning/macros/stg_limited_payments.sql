{{ config(materialized='external', format ='csv') }}
select 
  order_id,
  amount,
  {{cents_to_dollars('amount')}} as amount_usd,
from raw_payments

{{ limit_data_in_dev()}}