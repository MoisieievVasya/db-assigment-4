SELECT
    CAST(product_id AS INTEGER) AS product_id,
    CAST(product_name AS VARCHAR) AS product_name,
    CAST(category AS VARCHAR) AS category,
    CAST(price AS DECIMAL(10, 2)) AS price
FROM read_csv_auto('data/dim_product.csv')
