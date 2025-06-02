SELECT
  customer_id,
  customer_name,
  SUM(total_amount) AS lifetime_value,
  COUNT(order_id) AS orders_count
FROM {{ ref('int_customer_orders') }}
GROUP BY customer_id, customer_name
