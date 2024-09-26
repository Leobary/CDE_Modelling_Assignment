-- A complete profile for staff in Fufu Republic.

select
st.id, st.first_name||' '||st.last_name staff_full_name, st.gender,
b.name branchname, ci.name city, s.name state
from {{ ref('src_staff')}} st
left join {{ ref('src_branch')}} b on st.branch_id=b.id
left join {{ ref('src_city')}} ci on b.city_id=ci.id
left join {{ ref('src_state')}} s on ci.state_id=s.id
order by st.id