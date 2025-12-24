
UPDATE orders SET delivery_time = 30 WHERE delivery_time IS NULL;

DELETE FROM orders
WHERE order_id NOT IN (
  SELECT MIN(order_id) FROM orders GROUP BY customer_id, order_date
);
