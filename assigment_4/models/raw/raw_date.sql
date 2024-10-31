SELECT
    CAST(date_id AS INTEGER) AS date_id,  -- YYYYMMDD format
    CAST(date AS DATE) AS date,
    CAST(year AS INTEGER) AS year,
    CAST(quarter AS INTEGER) AS quarter,
    CAST(month AS INTEGER) AS month,
    CAST(day AS INTEGER) AS day
FROM read_csv_auto('data/dim_date.csv')
