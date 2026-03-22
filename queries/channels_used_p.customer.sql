
SELECT
   customer_id,
   sale_id,
   sale_date,
   channel,
   STRING_AGG(channel, ', ') OVER (PARTITION BY customer_id ORDER BY sale_date) AS channels_used
FROM tmp_sales;
