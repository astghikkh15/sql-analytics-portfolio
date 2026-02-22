SELECT
    category_raw,
    COUNT(*) AS transactions_per_category
FROM transactions_text_demo
GROUP BY category_raw
ORDER BY transactions_per_category DESC;