-- Finding the date of the first and last Order
-- How many years of Sales are Avaiable
-- How many months of Sales are Avaiable

SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year,MIN(order_date),MAX(order_date)) As Total_years,
DATEDIFF(month,MIN(order_date),MAX(order_date)) As Total_months
FROM gold.fact_sales


--Finding The youngest and  the oldest customer
SELECT

MAX(birthdate) AS Youngest_birthdate,
DATEDIFF(year,MAX(birthdate),GETDATE()) As Youngest_Age,

MIN(birthdate) AS Oldest_birthdate,
DATEDIFF(year,MIN(birthdate),GETDATE()) As Oldest_Age,

DATEDIFF(year,MIN(birthdate),MAX(birthdate)) As Age_Range
From gold.dim_customers

