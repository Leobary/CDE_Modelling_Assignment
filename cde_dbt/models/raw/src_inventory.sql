-- This model captures all the packages per order made by customers in Fufu Republic.

SELECT *
FROM {{ ref("inventory")}}