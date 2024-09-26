-- A dimension that reads to customers complete profile.

select
    c.id, c.first_name||' '||c.last_name full_name, c.email, c.phone_no, c.address,
    ci.name city, s.name "state", date(c.created_at) registeredDate
from {{ ref('src_customers')}} c
left join {{ ref('src_city')}} ci on c.city_id=ci.id
left join {{ ref('src_state')}} s on ci.state_id=s.id
order by c.id