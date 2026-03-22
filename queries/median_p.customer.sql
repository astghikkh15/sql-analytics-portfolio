
SELECT
    main.*,
	median.median_amount
FROM tmp_sales as main
LEFT JOIN (
    SELECT 
	    customer_id,
		PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY amount) AS median_amount
	FROM tmp_sales
	GROUP BY customer_id
) median ON (main.customer_id = median.customer_id)