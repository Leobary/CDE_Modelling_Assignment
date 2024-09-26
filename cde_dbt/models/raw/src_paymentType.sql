-- This captures the payment type made by each customer in Fufu Republic.

SELECT *
FROM {{ ref("paymentType")}}