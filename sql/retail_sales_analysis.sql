-- ============================================================
-- Retail Sales Data Warehouse - SQL Analysis
-- Project: Cloud-Based Retail Sales Data Warehouse & Analytics
-- ============================================================


-- 1. View all transactions
SELECT *
FROM retail_sales;


-- 2. Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM retail_sales;


-- 3. Total sales amount
SELECT SUM(total_amount) AS total_sales
FROM retail_sales;


-- 4. Total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM retail_sales;


-- 5. Sales by product category
SELECT
    product_category,
    SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY product_category
ORDER BY total_sales DESC;


-- 6. Quantity sold by product category
SELECT
    product_category,
    SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY product_category
ORDER BY total_quantity DESC;


-- 7. Monthly sales
SELECT
    DATE_TRUNC('month', date) AS sales_month,
    SUM(total_amount) AS monthly_sales
FROM retail_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY sales_month;


-- 8. Sales by gender
SELECT
    gender,
    SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY gender
ORDER BY total_sales DESC;


-- 9. Average transaction value
SELECT
    AVG(total_amount) AS average_transaction_value
FROM retail_sales;


-- 10. Top 10 customers by total spending
SELECT
    customer_id,
    SUM(total_amount) AS total_spending
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;


-- 11. Top 10 transactions by sales amount
SELECT
    transaction_id,
    customer_id,
    product_category,
    total_amount
FROM retail_sales
ORDER BY total_amount DESC
LIMIT 10;


-- 12. Sales by age group
SELECT
    CASE
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY
    CASE
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END
ORDER BY total_sales DESC;