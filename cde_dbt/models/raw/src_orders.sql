-- This model shows all the orders ever made in Fufu Republic.

SELECT *
FROM {{ ref("orders")}}