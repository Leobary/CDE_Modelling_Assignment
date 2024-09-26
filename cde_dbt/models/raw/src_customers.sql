-- This model captures the all customers that patronise Fufu Republic

SELECT *
FROM {{ ref("customers")}}