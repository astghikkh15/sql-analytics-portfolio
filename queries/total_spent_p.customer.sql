SELECT 
    customer_id,
	sale_id,
	amount,
SUM(amount) OVER (PARTITION BY customer_id) AS total_per_customer
FROM tmp_sales2;
