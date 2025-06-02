-- models/intermediate/int_customer_orders.sql
SELECT
  c.customer_id,
  c.customer_name,
  o.order_id,
  o.order_date,
  o.total_amount
FROM {{ ref('stg_orders') }} o
JOIN {{ source('retail_raw', 'customers_raw') }} c
  ON c.customer_id = o.customer_id
