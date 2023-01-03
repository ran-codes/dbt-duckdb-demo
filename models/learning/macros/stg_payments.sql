{{ config(materialized='external', format ='csv') }}
select 
  order_id,
  amount,
  {{cents_to_dollars('amount')}} as amount_usd,
from {{ source('external_csv', 'raw_payments') }}  