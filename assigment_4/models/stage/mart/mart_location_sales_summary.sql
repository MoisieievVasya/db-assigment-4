SELECT
    location,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(discounted_total) AS total_sales_amount
FROM {{ ref('stage_sales') }}
JOIN {{ ref('stage_customers') }} ON {{ ref('stage_sales') }}.customer_id = {{ ref('stage_customers') }}.customer_id
GROUP BY location
