/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/



-- Which 5 products generate the highest revenue ?
SELECT TOP 5
p.product_name,
SUM(f.sales_amount) AS Total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY Total_revenue DESC

SELECT *
FROM(
	SELECT 
	p.product_name,
	SUM(f.sales_amount) AS Total_revenue,
	RANK() OVER (ORDER BY SUM(f.sales_amount) DESC) AS Rank_products
	FROM gold.fact_sales f
	LEFT JOIN gold.dim_products p
	ON p.product_key = f.product_key
	GROUP BY p.product_name)t
WHERE Rank_products<=5


-- What are the 5 worst-performing products in terms of sales ?
SELECT TOP 5
p.product_name,
SUM(f.sales_amount) AS Total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY Total_revenue ASC


-- Find the top 10 customers who have generated the highest revenue
SELECT TOP 10
c.customer_key,
c.first_name,
c.last_name,
SUM(f.sales_amount) AS Total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
on c.customer_key=f.customer_key
GROUP BY 
c.customer_key,
c.first_name,
c.last_name
ORDER BY Total_revenue DESC


-- The 5 customers with the fewest orders placed

SELECT TOP 5
c.customer_key,
c.first_name,
c.last_name,
COUNT(DISTINCT f.order_number) AS Total_orders
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
on c.customer_key=f.customer_key
GROUP BY 
c.customer_key,
c.first_name,
c.last_name
ORDER BY Total_orders ASC