/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
Purpose:
    - To compare performance or metrics across dimensions or time periods.
    - To evaluate differences between categories.
    - Useful for A/B testing or regional comparisons.

SQL Functions Used:
    - SUM(), AVG(): Aggregates values for comparison.
    - Window Functions: SUM() OVER() for total calculations.
===============================================================================
*/

-- which categories contribute the  most to overall sales

WITH category_sales AS(
SELECT 
p.category,
SUM(f.sales_amount) AS total_sales
FROM gold.fact_sales f
left join gold.dim_products p
on f.product_key=p.product_key
group by p.category
)
select
category,
total_sales,
SUM(total_sales) OVER() AS Overall_sales,
CONCAT(ROUND((CAST(total_sales AS FLOAT)/SUM(total_sales) OVER())*100,2),'%') AS perceentage_of_total
from category_sales
ORDER BY total_sales DESC