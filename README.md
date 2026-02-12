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
