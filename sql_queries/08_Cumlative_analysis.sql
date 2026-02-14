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

