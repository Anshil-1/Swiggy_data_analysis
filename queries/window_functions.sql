
SELECT customer_id, COUNT(order_id),
RANK() OVER (ORDER BY COUNT(order_id) DESC) AS rank
FROM orders GROUP BY customer_id;
