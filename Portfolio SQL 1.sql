#1 CALCULATE THE TOTAL SPENDING FOR EACH CUSTOMER
WITH customer_spending AS 
(
	SELECT
		customer_id,
        SUM(quantity*selling_price) AS total_spending
	FROM orders AS ord
    JOIN products AS prod
		ON ord.product_id=prod.product_id
	GROUP BY customer_id
)
SELECT *
FROM customer_spending;