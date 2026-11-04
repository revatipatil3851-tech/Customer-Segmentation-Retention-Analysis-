
-- ============================================================
-- PROJECT: Customer Segmentation & Retention Analytics
-- DATABASE: MySQL
-- PURPOSE: E-commerce Customer Behaviour and RFM Analysis
-- ============================================================


-- 1. TOTAL CUSTOMERS
SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM customers;


-- 2. TOTAL ORDERS
SELECT
    COUNT(*) AS total_orders
FROM orders;


-- 3. ORDER STATUS DISTRIBUTION
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;


-- 4. CUSTOMER PURCHASE FREQUENCY
SELECT
    customer_id,
    COUNT(*) AS purchase_frequency
FROM orders
WHERE order_status = 'Delivered'
GROUP BY customer_id
ORDER BY purchase_frequency DESC;


-- 5. CUSTOMER-LEVEL REVENUE
SELECT
    o.customer_id,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered'
GROUP BY o.customer_id
ORDER BY total_revenue DESC;


-- 6. TOP 10 CUSTOMERS BY REVENUE
SELECT
    o.customer_id,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered'
GROUP BY o.customer_id
ORDER BY total_revenue DESC
LIMIT 10;


-- 7. CUSTOMER RECENCY
SELECT
    customer_id,
    DATEDIFF(
        (SELECT MAX(order_date) FROM orders),
        MAX(order_date)
    ) AS recency_days
FROM orders
WHERE order_status = 'Delivered'
GROUP BY customer_id;


-- 8. RFM METRICS
SELECT
    customer_id,
    DATEDIFF(
        (SELECT MAX(order_date) FROM orders),
        MAX(order_date)
    ) AS recency,
    COUNT(*) AS frequency,
    SUM(total_amount) AS monetary
FROM orders
WHERE order_status = 'Delivered'
GROUP BY customer_id;


-- 9. REVENUE BY MONTH
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    SUM(total_amount) AS monthly_revenue
FROM orders
WHERE order_status = 'Delivered'
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY order_month;


-- 10. CUSTOMER REVENUE CONTRIBUTION
SELECT
    customer_id,
    SUM(total_amount) AS customer_revenue,
    ROUND(
        SUM(total_amount) * 100 /
        (SELECT SUM(total_amount)
         FROM orders
         WHERE order_status = 'Delivered'),
        2
    ) AS revenue_contribution_percentage
FROM orders
WHERE order_status = 'Delivered'
GROUP BY customer_id
ORDER BY customer_revenue DESC;



