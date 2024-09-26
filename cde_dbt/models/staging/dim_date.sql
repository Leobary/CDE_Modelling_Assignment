-- A date dimension to aid reporting and analysis.

select * 
from
{{ ref('src_dim_date')}}