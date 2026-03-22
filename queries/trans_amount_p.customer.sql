SELECT
   sale_id,
   customer_id,
COUNT(*) OVER (PARTITION BY customer_id) AS transactions_per_customer
FROM tmp_sales2