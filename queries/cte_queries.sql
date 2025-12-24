
WITH customer_orders AS (
  SELECT customer_id, COUNT(*) AS total_orders
  FROM orders GROUP BY customer_id
)
SELECT * FROM customer_orders WHERE total_orders > 10;
