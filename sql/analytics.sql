-- Revenue by month

WITH monthly_sales AS (
    SELECT 
        d.year,
        d.month,
        SUM(f.amount) AS total_revenue
    FROM fact_sales f
    JOIN dim_date d ON f.date_key = d.date_key
    GROUP BY d.year, d.month
)

SELECT *
FROM monthly_sales
ORDER BY year, month;
