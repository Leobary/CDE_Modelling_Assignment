/* This aggregates the total amount spent by each customer for every
    packaged ordered.*/
    
with a as
    (select *
    from {{ ref("fact_order")}}),
b as 
    (select * 
    from {{ ref('src_item')}})
 
select a.customer_id, a.payment_id, a.dining_id, a.staff_id, a.order_date,
    sum(a.quantity * b.price) amount 
from a
join b on a.item_id=b.id
group by 1,2,3,4,5
order by 1