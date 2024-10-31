SELECT
    customer_id,
    {{ lowercase('customer_name') }} AS customer_name,       
    {{ lowercase('customer_email') }} AS customer_email,     
    location
FROM {{ ref('raw_customers') }}
