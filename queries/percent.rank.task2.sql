
SELECT 
    order_id,
	customer_id,
	order_revenue,
	PERCENT_RANK() OVER(PARTITION BY(customer_id) ORDER BY(order_revenue))
FROM temp_order_total