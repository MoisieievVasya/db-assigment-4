SELECT
    product_id,
    {{ lowercase('product_name') }} AS product_name,
    SUM(quantity) AS total_quantity_sold,
    SUM(discounted_total) AS total_sales_amount
FROM {{ ref('stage_sales') }}
JOIN {{ ref('stage_product') }} ON {{ ref('stage_sales') }}.product_id = {{ ref('stage_product') }}.product_id
GROUP BY product_id, product_name
