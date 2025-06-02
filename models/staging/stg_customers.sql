SELECT
  customer_id,
  customer_name,
  DATE(signup_date) AS signup_date
FROM {{ source('retail_elt', 'customers.csv') }}
