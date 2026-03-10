CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    country VARCHAR(50),
    signup_date DATE
);

CREATE TABLE subscriptions (
    subscription_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    plan VARCHAR(20),
    monthly_price NUMERIC(6,2),
    start_date DATE
);

CREATE TABLE usage_stats (
    usage_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    login_count INT,
    minutes_used INT,
    last_login DATE
);

CREATE TABLE churn (
    churn_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    churned BOOLEAN,
    churn_date DATE,
    reason VARCHAR(100)
);
