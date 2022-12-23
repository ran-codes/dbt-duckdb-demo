{{ config(materialized='external', format = 'csv') }}

with payments as (
    select * from raw_payments
),

pivoted as (
  select 
    order_id, 

    {%- set methods = ['bank_transfer','credit_card', 'coupon', 'gift_card' ] -%}

    {% for method in methods %}

    sum(case when payment_method = '{{ method }}' then amount else 0 end) as {{ method }}coupon_amount

    {%- if not loop.last %}, {% endif %}

    {% endfor %}

   from payments
   group by order_id 
)

select * from pivoted