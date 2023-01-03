{{ config(materialized='external', format ='csv') }}
select 
  order_id,
  amount,
  {{cents_to_dollars('amount')}} as amount_usd,
from raw_payments
{% if target.name == 'dev' %}
order by RANDOM()
limit 5
{% endif %}