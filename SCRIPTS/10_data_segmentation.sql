/*
===============================================================================
Data Segmentation Analysis
===============================================================================
Purpose:
    - To group data into meaningful categories for targeted insights.
    - For customer segmentation, product categorization, or regional analysis.

SQL Functions Used:
    - CASE: Defines custom segmentation logic.
    - GROUP BY: Groups data into segments.
===============================================================================
*/

/*Segment products into cost ranges and 
count how many products fall into each segment*/

WITH product_segments AS (
SELECT
product_key,
product_name,
cost,
CASE
WHEN cost < 100 THEN ‘Below 100’
WHEN cost < 500 THEN ‘100-499.99’
WHEN cost <= 1000 THEN ‘500-1000’
ELSE ‘Above 1000’
END AS cost_range
FROM gold.dim_products
)
SELECT
cost_range,
COUNT(product_key) AS total_products
FROM product_segments
GROUP BY cost_range
ORDER BY total_products DESC;
SELECT 
    cost_range,
    COUNT(product_key) AS total_products
FROM product_segments
GROUP BY cost_range
ORDER BY total_products DESC;

/* Group customers by spending and the span of their recorded order history. */

WITH customer_spending AS (
SELECT
c.customer_key,
SUM(f.sales_amount) AS total_spending,
MIN(f.order_date) AS first_order,
MAX(f.order_date) AS last_order,
DATEDIFF(
MONTH,
MIN(f.order_date),
MAX(f.order_date)
) AS lifespan
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key
GROUP BY c.customer_key
)
SELECT
customer_segment,
COUNT(customer_key) AS total_customers
FROM (
SELECT
customer_key,
CASE
WHEN first_order IS NULL OR last_order IS NULL THEN ‘Unclassified’
WHEN lifespan >= 12 AND total_spending > 5000 THEN ‘VIP’
WHEN lifespan >= 12 AND total_spending <= 5000 THEN ‘Regular’
ELSE ‘New’
END AS customer_segment
FROM customer_spending
) AS segmented_customers
GROUP BY customer_segment
ORDER BY total_customers DESC;