SELECT
    sale_id,
    customer_id,
    product_id,
    {{ replace_null('quantity', 1) }} As quantity,
    {{ calculate_discount('total_amount', 0.1) }} AS discounted_total
FROM {{ ref('raw_sales') }}
