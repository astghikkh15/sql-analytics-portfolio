CREATE TEMPORARY TABLE temp_order_total AS
SELECT
    o.order_id,
    o.customer_id,
	o.order_date,
    SUM(oi.quantity * p.price) AS order_revenue
FROM analytics.orders o
JOIN analytics.order_items oi ON o.order_id = oi.order_id
JOIN analytics.products p ON oi.product_id = p.product_id
GROUP BY o.order_id, o.customer_id;

CREATE TEMPORARY TABLE customer_total AS
SELECT
    o.customer_id,
    c.city,
    SUM(o.order_revenue) AS total_spent
FROM temp_order_total o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.city;