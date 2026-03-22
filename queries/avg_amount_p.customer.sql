SELECT
    sale_id,
    customer_id,
    amount,
    AVG(amount) OVER (PARTITION BY customer_id) AS avg_customer_amount
FROM tmp_sales;