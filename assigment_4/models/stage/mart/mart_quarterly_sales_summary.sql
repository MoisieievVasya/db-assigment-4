SELECT
    year,
    quarter,
    SUM(discounted_total) AS quarterly_sales_amount,
    COUNT(sale_id) AS quarterly_sales_count
FROM {{ ref('stage_sales') }}
JOIN {{ ref('stage_date') }} ON {{ ref('stage_sales') }}.date_id = {{ ref('stage_date') }}.date_id
GROUP BY year, quarter
ORDER BY year, quarter
