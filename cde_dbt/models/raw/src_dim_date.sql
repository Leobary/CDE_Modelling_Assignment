-- This model helps to read dates into more granular forms for easy analysis.

SELECT *
FROM {{ ref("dim_date")}}