

{%- set payment_method = {'bank_transfer', 'coupon', 'credit_card', 'gift_card', 'bitcoin'} -%}

with payments as (
    select * from {{ ref('stg_payments')}}
),

pivoted as (
    select 
        order_id
       

        {%- for payment_method in payment_methods -%}
          sum(case when payment_method = '{{payment_method}}' then amount else 0 end) as {{payment_method}}_amount
          
          --to check if the ',' is the last one, if yes it add the comma otherwise it doesn't include
          {% if not loop.last %}
              ,
          {% endif %}
        {%- endfor -%} 
        --, sum(case when payment_method = 'bank_transfer' then amount else 0 end) as bank_transfer_amount
        --, sum(case when payment_method = 'coupon' then amount else 0 end) as bank_transfer_amount
        --, sum(case when payment_method = 'credit_card' then amount else 0 end) as credit_card_amount
        --, sum(case when payment_method = 'gift_card' then amount else 0 end) as gift_card_amount
    from payments
    where status = 'success'
    group by 1    
)

select * from pivoted