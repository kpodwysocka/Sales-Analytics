-- Window functions ex
-- Rank customers by total spending

WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.name,
        SUM(f.amount) AS total_spent
    FROM fact_sales f
    JOIN dim_customer c 
        ON f.customer_key = c.customer_key
    GROUP BY c.customer_id, c.name
)

SELECT 
    customer_id,
    name,
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM customer_spending;

