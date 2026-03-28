
SELECT
    order_id,
    customer_id,
    order_date,
    order_revenue,
    order_revenue - LAG(order_revenue) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS revenue_diff
FROM temp_order_total
ORDER BY customer_id, order_date;
