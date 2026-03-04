-- STAR SCHEMA

CREATE TABLE dim_customer (
    customer_key INT PRIMARY KEY,
    customer_id INT,
    name TEXT,
    city TEXT,
    valid_from DATE,
    valid_to DATE,
    is_current BOOLEAN
);

CREATE TABLE dim_product (
    product_key INT PRIMARY KEY,
    product_id INT,
    product_name TEXT,
    category TEXT
);

CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT
);

CREATE TABLE fact_sales (
    sales_key INT PRIMARY KEY,
    customer_key INT,
    product_key INT,
    date_key INT,
    amount NUMERIC,
    FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    FOREIGN KEY (product_key) REFERENCES dim_product(product_key),
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key)
);
