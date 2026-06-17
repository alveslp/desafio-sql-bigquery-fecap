CREATE OR REPLACE TABLE dasafio1.ecommerce_orders AS
SELECT
  order_id,
  customer_id,
  customer_name,
  customer_email,
  customer_city,
  UPPER(customer_state) AS customer_state,
  product_id,
  product_name,
  LOWER(product_category) AS product_category,
  LOWER(payment_method) AS payment_method,
  LOWER(order_status) AS order_status,
  SAFE_CAST(quantity AS INT64) AS quantity,
  SAFE_CAST(unit_price AS FLOAT64) AS unit_price,
  SAFE_CAST(discount AS FLOAT64) AS discount,
  SAFE_CAST(order_date AS DATE) AS order_date,
  SAFE_CAST(shipping_date AS DATE) AS shipping_date,
  SAFE_CAST(delivered_date AS DATE) AS delivered_date,
  coupon_code,
  sales_channel,
  SAFE_CAST(updated_at AS DATE) AS updated_at

FROM dasafio1.ecommerce_orders_raw;
