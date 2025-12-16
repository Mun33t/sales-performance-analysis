-- Sales Performance & Regional Insights Analysis
-- Author: Muneet Pruthi
-- Purpose: Analyze sales data to identify top regions, products, and categories
-- Database: PostgreSQL-style SQL

-- Preview the dataset (first 10 rows)
SELECT *
FROM orders
LIMIT 10;

-- Total sales by region
SELECT
    region,
    SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

-- Top 5 products by total sales
SELECT
    product_name,
    SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;
