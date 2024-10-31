SELECT
    product_id,
    {{ lowercase('product_name') }} AS product_name,         
    {{ lowercase('category') }} AS category,                 
    price,
    {{ calculate_discount('price', 0.05) }} AS discounted_price  
FROM {{ ref('raw_product') }}
