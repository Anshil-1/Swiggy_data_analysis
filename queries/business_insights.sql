
SELECT customer_id, COUNT(*) AS total_orders
FROM orders GROUP BY customer_id
ORDER BY total_orders DESC LIMIT 3;

SELECT rider_id, AVG(delivery_time) AS avg_delivery_time
FROM orders GROUP BY rider_id
HAVING AVG(delivery_time) > 45
ORDER BY avg_delivery_time DESC LIMIT 4;
