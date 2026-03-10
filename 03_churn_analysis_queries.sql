INSERT INTO churn (customer_id, churned, churn_date, reason)
SELECT
    customer_id,
    RANDOM() < 0.25,
    DATE '2024-01-01' + (RANDOM()*200)::INT,
    (ARRAY[
        'Price too high',
        'Not using service',
        'Found competitor',
        'Technical issues'
    ])[FLOOR(RANDOM()*4 + 1)]
FROM customers;
