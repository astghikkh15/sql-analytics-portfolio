SELECT
    sale_id,
    customer_id,
    amount,
    MIN(amount) OVER (
        PARTITION BY customer_id
    ) AS min_amount,
    MAX(amount) OVER (
        PARTITION BY customer_id
    ) AS max_amount
FROM tmp_sales;