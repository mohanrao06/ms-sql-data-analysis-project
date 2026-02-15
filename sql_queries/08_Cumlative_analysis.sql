/*
===============================================================================
Cumulative Analysis
===============================================================================
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/


-- Calculate the total sales per month 
-- the running total of sales over time
SELECT
order_date,
total_sales,
sum(total_sales) over(order by order_date) AS running_total_sales,
AVG(avg_price) over(order by order_date) AS Moving_average_price
from(
	SELECT 
	DATETRUNC(month,order_date) as Order_date,
	sum(sales_amount) as total_sales,
	avg(price) as avg_price
	from  gold.fact_sales
	where Order_date is not null
	group by DATETRUNC(month,order_date)

	)t


SELECT
order_date,
total_sales,
sum(total_sales) over(order by order_date) AS running_total_sales,
AVG(avg_price) over(order by order_date) AS Moving_average_price
from(
	SELECT 
	DATETRUNC(year,order_date) as Order_date,
	sum(sales_amount) as total_sales,
	avg(price) as avg_price
	from  gold.fact_sales
	where Order_date is not null
	group by DATETRUNC(year,order_date)

	)c

