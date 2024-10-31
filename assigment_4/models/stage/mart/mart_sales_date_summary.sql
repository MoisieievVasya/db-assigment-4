SELECT
    date_id,
    {{ format_date('date', 'YYYY-MM-DD') }} AS date,
    SUM(discounted_total) AS total_sales_amount,
    COUNT(sale_id) AS total_sales_count
FROM {{ ref('stage_sales') }}
JOIN {{ ref('stage_date') }} ON {{ ref('stage_sales') }}.date_id = {{ ref('stage_date') }}.date_id
GROUP BY date_id, date
