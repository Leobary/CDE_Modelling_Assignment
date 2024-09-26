-- The reads to the staff details that work in Fufu Republic.

SELECT *
FROM {{ ref("staff")}}