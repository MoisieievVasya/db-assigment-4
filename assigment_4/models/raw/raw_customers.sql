SELECT
    CAST(customer_id AS INTEGER) AS customer_id,
    CAST(customer_name AS VARCHAR(255)) AS customer_name,
    CAST(customer_email AS VARCHAR(255)) AS customer_email,
    CAST(location AS VARCHAR(100)) AS location
FROM read_csv_auto('data/dim_customer.csv')
