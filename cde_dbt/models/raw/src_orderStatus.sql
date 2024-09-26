-- This shows the status of an order placed.

SELECT *
FROM {{ ref("orderStatus")}}