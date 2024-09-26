/* This shows the package, payment and dining type, with the staff that attended
    to each customer request */

select
    o.id, o.customer_id, o.payment_id, o.dining_id, o.staff_id, i.item_id,
    i.quantity, date(o.created_at) as order_date
from {{ ref('src_orders')}} o
left join {{ ref('src_inventory')}} i on i.order_id=o.id
join {{ ref('src_item')}} it on i.item_id=it.id
order by 1