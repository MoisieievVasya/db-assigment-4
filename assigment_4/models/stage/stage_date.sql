SELECT
    date_id,
    {{ format_date('date', 'YYYY-MM-DD') }} AS date,        
    year,
    quarter,
    month,
    day
FROM {{ ref('raw_date') }}
