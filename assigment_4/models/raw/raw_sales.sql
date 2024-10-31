SELECT
    CAST(sale_id AS INTEGER) AS sale_id,
    CAST(customer_id AS INTEGER) AS customer_id,
    CAST(product_id AS INTEGER) AS product_id,
    CAST(date_id AS INTEGER) AS date_id,
    CAST(quantity AS INTEGER) AS quantity,
    CAST(total_amount AS DECIMAL(10, 2)) AS total_amount,
    CAST(discount AS DECIMAL(5, 2)) AS discount
FROM read_csv_auto('data/fact_sales.csv')
