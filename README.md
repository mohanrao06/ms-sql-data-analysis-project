# MS SQL Data Analysis Project

## 📌 Project Overview
This project focuses on performing data analysis using **Microsoft SQL Server**.
The goal is to practice real-world SQL skills such as database creation,
data import, schema design, exploratory data analysis, and business-focused
insight generation.

## 🗂️ Dataset
- **Source:** CSV files (manually imported into MS SQL Server)
- **Data Type:** Sales / Customers data

## 🛠️ Tools & Technologies
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Git & GitHub

## 🏗️ Work Completed So Far

### Day 1 – Database Setup & Initial Exploration
- Created the database
- Imported CSV files into SQL Server
- Designed and created the database schema
- Performed initial database exploration:
  - Table structure analysis
  - Row count checks
  - Basic `SELECT` queries

### Day 2 – Data & Time-Based Exploration
- Performed **dimension exploration** to identify distinct values across columns
- Conducted **date exploration** to understand data boundaries:
  - First order date: **2010**
  - Last order date: **2014**
  - Total data timespan: **4 years**
- Analyzed **age distribution**:
  - Minimum age: **40**
  - Maximum age: **110**
- Improved understanding of data scope and limitations

### Day 3 – Business Metrics & Magnitude Analysis
- Calculated **key business metrics (Big Numbers)** using SQL:
  - Highest level of aggregation
  - Lowest level of detail
- Generated a consolidated metrics report including:
  - Total Sales
  - Total Quantity
  - Average Price
  - Total Number of Orders
  - Total Number of Products
  - Total Number of Customers
- Performed **magnitude analysis**:
  - Compared measure values across categories
  - Identified category-level contribution and importance
- Translated raw data into high-level business insights

## Day 4 – Magnitude & Distribution Analysis
- Customers by country
- Customers by gender
- Products by category
- Average cost per category
- Revenue by category
- Revenue per customer
- Sold items distribution across countries

Key Insight:
- United States leads in customers
- Bikes category generates highest revenue

---

## Day 5 – Ranking Analysis

Performed ranking using ORDER BY and aggregation functions.

### Product Performance Analysis
- Identified Top 5 products by revenue
- Identified Bottom 5 products by sales

### Customer Performance Analysis
- Top 10 customers generating highest revenue
- Bottom 5 customers with the fewest orders

### Business Value
- Identified revenue-driving products
- Highlighted low-performing items
- Recognized high-value customers
- Detected low-engagement customers

---
---

## Day 6 – Advanced Time-Series & Cumulative Analysis

### 1️⃣ Sales Performance Over Time
- Analyzed yearly sales performance
- Analyzed monthly sales trends
- Aggregated:
  - Total Sales
  - Total Customers
  - Total Quantity
- Evaluated business growth from 2010–2014

### 2️⃣ Cumulative Analysis (Window Functions)

Implemented window functions to calculate:

- Monthly total sales
- Running total of sales over time using:
  SUM(total_sales) OVER (ORDER BY order_date)
- Moving average price trends using:
  AVG(avg_price) OVER (ORDER BY order_date)

### Business Impact
- Identified revenue growth patterns
- Measured cumulative business performance
- Evaluated pricing trends over time
- Determined whether the business is growing or declining

---

## Day 7 – Performance & Part-to-Whole Analysis

### Yearly Product Performance Analysis

Analyzed product-level yearly performance using advanced window functions.

- Compared current year sales to:
  - Product’s average sales (AVG() OVER PARTITION BY)
  - Previous year sales (LAG() OVER PARTITION BY ORDER BY)
- Calculated:
  - Difference from average
  - Year-over-Year (YoY) difference
- Categorized performance as:
  - Above average
  - Below average
  - Increase / Decrease / No change

### Business Insight
- Identified consistently high-performing products
- Detected declining product trends
- Measured product growth momentum over time

---

###  Part-to-Whole (Contribution) Analysis

Evaluated how each category contributes to total revenue.

- Calculated total sales per category
- Calculated overall sales using window aggregation
- Computed percentage contribution of each category

### Key Findings
- Bikes contribute approximately 96% of total revenue
- Accessories and Clothing contribute significantly less
- Revenue dependency is heavily concentrated in one category

---
## 📌 Day 8 – Data Segmentation

### 🔹 Overview
Data segmentation helps group data into meaningful categories to analyze patterns and relationships between measures.

---

## 1️⃣ Product Cost Segmentation

### 🎯 Objective
Segment products into cost ranges and count the number of products in each segment.

### 🛠 Logic Used
- Used `CASE` statement to create cost buckets:
  - Below 100
  - 100–500
  - 500–1000
  - Above 1000
- Used `COUNT()` to calculate total products per segment
- Applied `GROUP BY` and `ORDER BY`

### 📊 Result

| Cost Range   | Total Products |
|--------------|---------------|
| Below 100    | 110           |
| 100–500      | 101           |
| 500–1000     | 45            |
| Above 1000   | 39            |

### 📌 Insight
Most products fall under the lower cost segments, while higher-priced products are limited.

---

## 2️⃣ Customer Segmentation

### 🎯 Objective
Group customers based on lifespan and total spending.

### 🛠 Business Rules

- **VIP**
  - Lifespan > 12 months
  - Total Spending > $5000

- **Regular**
  - Lifespan > 12 months
  - Total Spending ≤ $5000

- **New**
  - Lifespan < 12 months

### 🛠 Logic Used
- Created a CTE to calculate:
  - Total spending (`SUM`)
  - First order date (`MIN`)
  - Last order date (`MAX`)
  - Lifespan using `DATEDIFF`
- Used `CASE` statement to categorize customers
- Used `COUNT()` to calculate total customers per segment

### 📊 Result

| Customer Segment | Total Customers |
|------------------|-----------------|
| Regular          | 1911            |
| VIP              | 1582            |
| New              | 14991           |

### 📌 Insight
A large percentage of customers are new, indicating recent growth in customer acquisition.

---

### 🚀 Skills Practiced
- CTE (Common Table Expressions)
- Aggregation Functions
- CASE Statements
- Date Functions
- Data Segmentation Techniques
---
## 📅 Day 9 – Customer Report (MS SQL Data Analysis Project)

### 📌 Overview
Day 9 focuses on building a comprehensive **Customer Report** that consolidates customer transaction history into business-ready insights using MS SQL Server.

This step transforms raw transactional data into structured customer intelligence.

---

## 🎯 Objectives

- Aggregate customer-level metrics
- Segment customers based on behavior
- Calculate business KPIs
- Generate analytical features for reporting & decision-making

---

## 🧩 Key Features Implemented

### 1️⃣ Customer Segmentation
Customers are classified into:
- **VIP** → Lifespan > 12 months AND Total Sales > 5000
- **Regular**
- **New**

Implemented using `CASE` statements.

---

### 2️⃣ Age Group Classification
Customers are grouped as:
- Minors (<18)
- Youth (18–30)
- Middle-Aged (30–60)
- Senior Citizens (>60)

---

### 3️⃣ Aggregated Metrics

The following metrics are calculated at customer level:

- Total Orders
- Total Sales
- Total Quantity Purchased
- Total Products
- Customer Lifespan (in months)

---

### 4️⃣ Business KPIs Calculated

#### 🔹 Recency
Months since last order:
```sql DATEDIFF(MONTH, last_order_date, GETDATE()) AS recency ```

## 🔍 SQL Concepts Used
- SELECT
- GROUP BY
- ORDER BY
- SUM()
- COUNT()
- AVG()
- DISTINCT
- MIN() / MAX()
- Ranking & Top-N queries
- Business KPI Aggregation
- DATE functions (YEAR, MONTH, DATETRUNC)
- Window Functions (OVER, ORDER BY)
- Running Total
- Moving Average
- CTE (WITH clause)
- SUM()
- AVG() OVER (PARTITION BY)
- LAG() OVER (PARTITION BY ORDER BY)
- Window Aggregation
- Percentage contribution calculation
- Year-over-Year comparison

--- 


## 🚀 Upcoming Work
- Window functions (RANK, DENSE_RANK)
- Time-series analysis
- Customer segmentation
- Revenue growth trends
- Advanced joins & subqueries

---

## 📌 Project Status
🟢 Active – Moving toward advanced analytical SQL techniques
