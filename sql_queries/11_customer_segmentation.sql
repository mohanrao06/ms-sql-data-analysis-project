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

/* Segment products into  cost range and
count how many products fall into each segment */
WITH product_segments AS(
SELECT
product_key,
product_name,
cost,
CASE WHEN cost<100 THEN 'Below 100'
	 WHEN cost BETWEEN  100 AND 500 THEN '100-500'
	 WHEN cost BETWEEN  500 AND 1000 THEN '500-1000'
	 ELSE 'Above 1000'
END cost_range
FROM gold.dim_products)

SELECT 
cost_range,
count(product_key) AS total_products
from product_segments
group by cost_range
order by total_products DESC

/*  

Grouping customers into three segments based on their spending behavior
* VIP: at least 12 months of history and spending more then $5000
* regular: at least 12 months of history and spending  $5000 or less
* New : lifespan less than 12 months

and find total number of customers by each group 

*/

WITH customer_spending AS (
    SELECT 
        f.customer_key,
        SUM(f.sales_amount) AS total_spending,
        MIN(f.order_date) AS first_order,
        MAX(f.order_date) AS last_order,
        DATEDIFF(MONTH, MIN(f.order_date), MAX(f.order_date)) AS lifespan
    FROM gold.fact_sales f
    GROUP BY f.customer_key
)

SELECT 
Customer_segment,
COUNT(customer_key)
FROM(
    SELECT
    customer_key,
    CASE WHEN lifespan >12 AND total_spending>5000 THEN 'VIP'
         WHEN lifespan >12 AND total_spending<=5000 THEN 'Regular'
         ELSE 'New'
    END Customer_segment
    FROM customer_spending
)t
GROUP BY Customer_segment




