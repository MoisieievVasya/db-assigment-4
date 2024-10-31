SELECT
    customer_id,
    COUNT(sale_id) AS total_purchases,
    SUM(discounted_total) AS total_amount_spent
FROM {{ ref('stage_sales') }}
GROUP BY customer_id
