SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM analytics.orders o
LEFT JOIN analytics.order_items oi ON o.order_id = oi.order_id
LEFT JOIN analytics.products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
