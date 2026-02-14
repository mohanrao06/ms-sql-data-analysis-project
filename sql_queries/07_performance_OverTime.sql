-- Analyze Sales Performance Over Years
SELECT 
YEAR(order_date) as order_year,
SUM(sales_amount) AS total_sales,
count(DISTINCT customer_key) as total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
Where order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

-- Analyze Sales Performance Over Months
SELECT 
YEAR(order_date) as order_year,
MONTH(order_date) as order_year,
SUM(sales_amount) AS total_sales,
count(DISTINCT customer_key) as total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
Where order_date IS NOT NULL
GROUP BY YEAR(order_date),MONTH(order_date)
ORDER BY YEAR(order_date),MONTH(order_date)


SELECT 
DATETRUNC(MONTH,order_date) as order_year,
SUM(sales_amount) AS total_sales,
count(DISTINCT customer_key) as total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
Where order_date IS NOT NULL
GROUP BY DATETRUNC(MONTH,order_date)
ORDER BY DATETRUNC(MONTH,order_date)


SELECT 
FORMAT(order_date,'yyyy-MMM') as order_year,
SUM(sales_amount) AS total_sales,
count(DISTINCT customer_key) as total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
Where order_date IS NOT NULL
GROUP BY FORMAT(order_date,'yyyy-MMM')
ORDER BY FORMAT(order_date,'yyyy-MMM')