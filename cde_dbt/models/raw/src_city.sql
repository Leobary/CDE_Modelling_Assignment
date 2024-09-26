-- This model contains cityID and maps to address and state

SELECT *
FROM {{ ref("city")}}