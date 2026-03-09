# 📊 SQL Sales & Customer Analytics Project (MS SQL Server)

## 📌 Project Overview
This project demonstrates an **end-to-end data analytics workflow using Microsoft SQL Server**. The objective is to transform raw transactional sales data into **actionable business insights** through SQL-based data exploration, KPI development, segmentation analysis, ranking analysis, and time-series analytics.

The project simulates real-world responsibilities of a **Data Analyst / Business Intelligence Analyst**, where raw data is converted into structured insights that support **business decision-making**.

---

## 🎯 Project Objectives

- Design and manage a relational database using SQL Server  
- Perform **exploratory data analysis (EDA)** using SQL  
- Generate **core business KPIs**  
- Identify **top-performing products and customers**  
- Analyze **sales trends over time**  
- Perform **customer segmentation**  
- Evaluate **category contribution to total revenue**  
- Build **analytical product and customer reports**

---
## ❓ Business Questions

This project aims to answer key analytical questions that a retail business might ask:

1. What is the overall business performance in terms of total sales, orders, and customers?
2. Which product categories generate the most revenue?
3. Which products are the top contributors to sales?
4. Who are the most valuable customers based on spending?
5. How has sales performance changed over time?
6. Which countries contribute the most customers and revenue?
7. What percentage of revenue comes from each product category?
8. Which products are growing or declining in performance year-over-year?
9. How can customers be segmented based on their purchasing behavior?
10. Which products fall into different cost ranges?

---

## 🗂 Dataset Information

| Attribute | Description |
|----------|-------------|
| Data Source | CSV files imported into SQL Server |
| Data Type | Sales, Products, Customers |
| Time Range | 2010 – 2014 |
| Domain | Retail / E-Commerce Sales |

The dataset contains transactional sales records along with customer and product attributes used for analytical reporting.

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|-----|--------|
| Microsoft SQL Server | Database management |
| SQL Server Management Studio (SSMS) | Querying and database development |
| SQL | Data analysis and reporting |
| Git & GitHub | Version control and project documentation |

---

## 🏗 Project Architecture

```
Raw CSV Data
      │
      ▼
Data Import (SQL Server)
      │
      ▼
Schema Design
      │
      ▼
Data Exploration
      │
      ▼
Business KPI Calculation
      │
      ▼
Advanced SQL Analytics
      │
      ▼
Customer & Product Reports
```

---

## 📊 Exploratory Data Analysis (EDA)

Initial analysis was performed to understand the dataset structure and scope.

Key tasks included:

- Table structure validation  
- Row count verification  
- Distinct dimension exploration  
- Date boundary analysis  
- Data completeness checks  

### Data Scope Insights

- Dataset spans **4 years (2010–2014)**
- Contains **customers, products, and sales transactions**
- Supports multi-level aggregation and analytical reporting

---

## 📈 Business KPI Development

Core business metrics were calculated to measure overall performance.

### KPIs Generated

- Total Revenue  
- Total Orders  
- Total Customers  
- Total Products  
- Total Quantity Sold  
- Average Product Price  

These KPIs provide a **high-level overview of business performance**.

---

## 📊 Product Performance Analysis

Product-level analysis was conducted to evaluate performance and contribution.

### Analysis Performed

- Top-performing products by revenue  
- Lowest-performing products by sales  
- Category-level revenue analysis  
- Product revenue segmentation  

### Key Insight

The **Bikes category contributes approximately 96% of total revenue**, indicating a heavy dependency on a single product category.

---

## 👥 Customer Behavior Analysis

Customer purchasing behavior was analyzed using aggregated metrics.

### Metrics Calculated

- Total Orders per Customer  
- Total Spending  
- Total Quantity Purchased  
- Unique Products Purchased  
- Customer Lifespan  

### Customer Segmentation

Customers were classified into three segments:

| Segment | Criteria |
|-------|---------|
| VIP | Lifespan > 12 months AND Spending > $5000 |
| Regular | Lifespan > 12 months AND Spending ≤ $5000 |
| New | Lifespan < 12 months |

### Insight

A significant proportion of customers belong to the **New Customer segment**, indicating strong customer acquisition during the dataset period.

---

## 📊 Revenue Distribution Analysis

Revenue distribution was analyzed across several business dimensions.

### Dimensions Evaluated

- Country  
- Gender  
- Product Category  
- Customer Contribution  

### Key Findings

- **United States has the highest number of customers**
- Revenue is heavily concentrated in the **Bikes category**
- Accessories and Clothing contribute relatively smaller shares

---

## 📈 Time-Series Sales Analysis

Sales trends were analyzed over time to measure growth and seasonality.

### Analysis Included

- Yearly sales performance  
- Monthly sales trends  
- Customer growth over time  
- Quantity sold trends  

### Advanced Calculations

Running totals:

```sql
SUM(total_sales) OVER (ORDER BY order_date)
```

Moving averages:

```sql
AVG(avg_price) OVER (ORDER BY order_date)
```

These calculations help evaluate **revenue growth patterns and pricing trends over time**.

---

## 📊 Advanced SQL Analytics

The project uses **advanced SQL techniques** to perform deeper analysis.

### Window Functions

Used for:

- Running totals  
- Moving averages  
- Year-over-Year comparisons  
- Product performance evaluation  

### Analytical Techniques

- Magnitude Analysis  
- Distribution Analysis  
- Segmentation  
- Part-to-Whole Contribution  
- Time-Series Analysis  
- KPI Development  

---

## 📑 Analytical Reports

### Customer Analytics Report

A consolidated report summarizing customer-level performance.

Metrics included:

- Total Orders  
- Total Sales  
- Quantity Purchased  
- Product Diversity  
- Customer Lifespan  
- Recency (months since last purchase)

This report helps identify **high-value customers and retention opportunities**.

---

### Product Performance Report

A product-level analytical report that evaluates product performance.

Metrics included:

- Total Orders  
- Total Sales  
- Total Quantity Sold  
- Unique Customers  
- Product Lifespan  
- Recency of Sales  
- Average Order Revenue  
- Average Monthly Revenue  

Products are categorized as:

- High Performers  
- Mid-Level Performers  
- Low Performers  

---

## 🔍 SQL Concepts Demonstrated

### Core SQL
- SELECT  
- WHERE  
- GROUP BY  
- ORDER BY  
- DISTINCT  

### Aggregation Functions
- SUM()  
- COUNT()  
- AVG()  
- MIN()  
- MAX()  

### Advanced SQL
- Window Functions (`OVER`)  
- PARTITION BY  
- LAG()  
- Running Totals  
- Moving Averages  
- Ranking Analysis  

---

## 📊 Key Business Insights

- **Bikes generate ~96% of total revenue**
- **United States leads in customer base**
- **Customer acquisition increased significantly over time**
- Some products show **consistent year-over-year growth**
- Revenue trends indicate **steady business expansion**

---
## 💡 Business Impact

The insights generated from this analysis can support business decision-making in several ways:

• Identify high-performing products that drive most revenue

• Detect underperforming products that may require marketing support

• Recognize high-value customers for loyalty programs

• Understand revenue dependency on specific product categories

• Monitor sales growth trends to guide strategic planning

These insights can help the business optimize product strategy, marketing efforts, and customer retention initiatives.

---

## 🚀 Skills Demonstrated

- SQL Data Analysis  
- Database Design  
- Business KPI Development  
- Customer Segmentation  
- Product Performance Analytics  
- Time-Series Analysis  
- Window Functions  
- SQL Reporting  

---

## 📂 Project Structure

```
sql-sales-analytics-project
│
├── datasets
│   ├── customers.csv
│   ├── products.csv
│   └── sales.csv
│
├── sql_queries
│   ├── exploratory_analysis.sql
│   ├── business_metrics.sql
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   └── time_series_analysis.sql
│
└── README.md
```

---
## 📊 Visualization Layer (Optional Dashboard)

To support data storytelling, a simple dashboard can be created to visualize key insights derived from SQL analysis.

Possible dashboard visuals include:

• KPI Cards – Total Sales, Orders, Customers, Quantity

• Sales Trend Over Time (Line Chart)

• Revenue by Product Category

• Top 10 Products by Revenue

• Top 10 Customers by Sales

• Customer Segmentation Distribution

• Sales by Country

The dashboard would only visualize results generated through SQL queries, ensuring that all business logic remains implemented in SQL Server.

---

## 📌 Future Improvements

- Implement advanced ranking functions (`RANK`, `DENSE_RANK`)
- Integrate **Power BI dashboards**
- Add **data visualization layer**
- Build **automated analytical pipelines**

---

## 👨‍💻 Author

**Mohan Rao**

Aspiring **Data Analyst | SQL | Data Analytics | Business Intelligence**
