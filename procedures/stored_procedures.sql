
CREATE OR REPLACE PROCEDURE get_orders_by_customer(cid INT)
LANGUAGE plpgsql AS $$
BEGIN
  SELECT * FROM orders WHERE customer_id = cid;
END;
$$;

CREATE OR REPLACE PROCEDURE rider_performance()
LANGUAGE plpgsql AS $$
BEGIN
  SELECT rider_id, AVG(delivery_time) FROM orders GROUP BY rider_id;
END;
$$;
