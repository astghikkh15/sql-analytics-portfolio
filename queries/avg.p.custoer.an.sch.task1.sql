
SELECT
	customer_id,
	AVG(order_revenue)
FROM temp_order_total
GROUP BY customer_id
ORDER BY customer_id;
