-- Customer Segmentation & Retention Analytics
-- Database: MySQL

-- 1. Total number of customers
SELECT
    COUNT(*) AS total_customers
FROM customers;

-- 2. Total number of orders
SELECT
    COUNT(*) AS total_orders
FROM orders;

-- 3. Order status distribution
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;
