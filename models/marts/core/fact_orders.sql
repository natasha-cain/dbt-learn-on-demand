with stg_payments as (
    select * from {{ ref('stg_payments')}}
),
stg_orders as (
    select * from {{ ref('stg_orders')}}
),
final as (
select s.order_id,
        s.customer_id,
        coalesce(amount,0) as amount
from stg_orders s
join stg_payments p on s.order_id = p.order_id
)
select * from final