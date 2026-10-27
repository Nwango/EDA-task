SQL Data Analytics Project: Exploratory Data Analysis

Project Overview

This project demonstrates the use of SQL Server to explore, analyze, and generate business insights from a structured sales data warehouse.

The analysis focuses on customer behavior, product performance, sales trends, revenue distribution, and other key business metrics. Using SQL queries, aggregations, Common Table Expressions (CTEs), window functions, and views, the project transforms raw sales data into meaningful information that can support business decision-making.

The project also includes customer and product reports that consolidate important metrics into structured outputs for further analysis and visualization.

Project Objectives

The main objectives of this project are to:

* Explore the structure and contents of a sales data warehouse.
* Examine customer, product, and sales data.
* Analyze sales performance across products, categories, customers, and time periods.
* Identify top-performing products and customers.
* Examine changes in sales over time and calculate cumulative metrics.
* Segment customers based on spending and purchasing history.
* Categorize products based on cost and sales performance.
* Calculate key performance indicators (KPIs) to support business analysis.
* Create customer and product reports for further analysis and visualization.

Tools and Technologies

* SQL Server: Database management and query execution.
* SQL Server Management Studio (SSMS) or a compatible SQL Server client: For executing and managing SQL scripts.
* GitHub: Version control, project documentation, and code sharing.

SQL Concepts Applied

The project demonstrates practical applications of:

* Data exploration and filtering
* Aggregate functions: SUM(), COUNT(), AVG(), MIN(), and MAX()
* Grouping and sorting with GROUP BY and ORDER BY
* Conditional logic using CASE
* Common Table Expressions (CTEs)
* Subqueries
* Window functions, including RANK(), LAG(), and aggregate functions with OVER()
* Date functions and date-based analysis
* Joins between fact and dimension tables
* Customer and product segmentation
* Views for reusable analytical reports
* Percentage contribution and part-to-whole analysis

Dataset Description

The project uses a sales data warehouse containing three main tables.

Table	Description
gold.dim_customers	Contains customer information, including customer identifiers, names, demographic details, and other customer attributes.
gold.dim_products	Contains product information, including product names, categories, subcategories, costs, and other product attributes.
gold.fact_sales	Contains sales transaction records, including order details, dates, product and customer identifiers, sales amounts, and quantities.

The customer and product dimension tables provide descriptive information, while the sales fact table contains the transactional data used for analysis.

Data Files

The project includes the following CSV files:

* dim_customers.csv
* dim_products.csv
* fact_sales.csv

These files are stored in the datasets/flat_files/ directory.

Project Structure

The repository is organized into SQL scripts and supporting datasets.

EDA-task/
│
├── SCRIPTS/
│   ├── 00_init_database.sql
│   ├── 01_database_exploration.sql
│   ├── 02_dimensions_exploration.sql
│   ├── 03_date_range_exploration.sql
│   ├── 04_measures_exploration.sql
│   ├── 05_magnitude_analysis.sql
│   ├── 06_ranking_analysis.sql
│   ├── 07_change_over_time_analysis.sql
│   ├── 08_cumulative_analysis.sql
│   ├── 09_performance_analysis.sql
│   ├── 10_data_segmentation.sql
│   ├── 11_part_to_whole_analysis.sql
│   ├── 12_report_customers.sql
│   └── 13_report_products.sql
│
├── datasets/
│   └── flat_files/
│       ├── dim_customers.csv
│       ├── dim_products.csv
│       └── fact_sales.csv
│
└── README.md

Note: The structure above reflects the project’s intended organization. The local database backup, DataWarehouseAnalytics.bak, is not included in this directory tree.

Analysis Performed

1. Database Exploration

Examined the database structure, available tables, and column information to understand how the data is organized.

2. Dimension Exploration

Explored customer and product dimensions to understand the available attributes, identify distinct values, and examine product categories and customer locations.

3. Date Range Exploration

Investigated the available date ranges in the dataset, including sales dates and customer birthdates, to understand the temporal coverage of the data.

4. Measures Exploration

Calculated basic business measures and aggregated metrics to establish a foundation for further analysis.

5. Magnitude Analysis

Examined the scale of business activity by analyzing measures such as:

* Customer counts across countries and genders
* Product counts across categories
* Average product costs
* Revenue by product category and customer
* Quantities sold across countries

6. Ranking Analysis

Ranked products and customers using sales performance and order activity.

The analysis identifies high-revenue products, low-revenue products, high-value customers, and customers with fewer distinct orders.

7. Change-over-Time Analysis

Examined sales activity across different time periods to understand changes in:

* Total sales
* Unique customers
* Quantities sold

The analysis uses date-based grouping to summarize activity over time.

8. Cumulative Analysis

Calculated yearly sales totals and running totals to examine accumulated sales performance over time.

The analysis also examines cumulative averages of yearly average prices.

9. Performance Analysis

Evaluated product performance across years by comparing yearly sales with historical performance.

The analysis uses window functions to compare current-year sales against average yearly sales and previous-year sales.

10. Data Segmentation

Grouped products into cost ranges and customers into spending and purchasing-history segments.

Customer segments include:

* VIP
* Regular
* New

Products are grouped into cost ranges to support product distribution analysis.

11. Part-to-Whole Analysis

Calculated each product category’s contribution to overall sales.

This analysis helps identify the categories that account for the largest and smallest shares of total sales.

12. Customer Report

Created the SQL view gold.report_customers to consolidate customer-level metrics, including:

* Customer name and age
* Age group
* Customer segment
* Total orders
* Total sales
* Total quantity purchased
* Number of distinct products purchased
* Last order date
* Recency in months
* Purchasing-history lifespan
* Average order value
* Average monthly spend

13. Product Report

Created the SQL view gold.report_products to consolidate product-level metrics, including:

* Product name, category, and subcategory
* Product cost
* Product performance segment
* Total orders
* Total sales
* Total quantity sold
* Number of unique customers
* Last sale date
* Recency in months
* Purchasing-history lifespan
* Average selling price
* Average order revenue
* Average monthly revenue

These views provide structured outputs that can be used for further analysis and visualization.

Key Business Questions

The project is designed to investigate questions such as:

1. Which product categories generate the highest total sales?
2. Which products generate the highest and lowest revenue?
3. Which customers contribute the most to sales?
4. How does sales activity change over time?
5. Which products perform above or below their historical average sales?
6. How do customers differ in spending and purchasing history?
7. What proportion of total sales comes from each product category?
8. How frequently do customers make purchases?
9. What is the average order value for each customer?
10. Which products have the highest average selling prices and average order revenues?

Skills Demonstrated

This project demonstrates practical application of SQL for:

* Database exploration
* Data aggregation and analysis
* Joining relational tables
* Date-based analysis
* Ranking and performance comparisons
* Customer and product segmentation
* KPI calculations
* Sales and revenue analysis
* Analytical view creation
* Business-focused problem-solving

How to Use This Project

1. Clone or download the repository.
2. Open the SQL scripts using a compatible SQL Server client.
3. Review 00_init_database.sql to understand the database initialization and data-loading process.
4. Ensure the required CSV files are available at the paths specified in the initialization script, updating those paths where necessary.
5. Execute the initialization script in an appropriate SQL Server environment.
6. Run the remaining SQL scripts in numerical order to explore the database and perform the analyses.
7. Review the customer and product report scripts to understand how the analytical views are created.

Important: The initialization script contains operations that can drop and recreate the project database and reload tables. Review the script carefully before executing it, and do not run it against a database containing data you need to preserve.

The initialization script also uses SQL Server-specific syntax and file-loading commands. A compatible SQL Server environment and appropriate file permissions are required.

Future Improvements

Potential extensions to this project include:

* Building interactive dashboards to visualize sales trends and product performance.
* Developing additional customer behavior analyses.
* Exploring the relationship between product costs and sales performance.
* Presenting key findings through charts and business-focused recommendations.
* Improving the presentation of analytical results for non-technical audiences.

Conclusion

This project demonstrates how SQL can be used to explore a relational sales data warehouse, analyze customer and product performance, and calculate business metrics.

By combining database exploration, sales analysis, segmentation, window functions, and analytical reporting, the project provides a foundation for turning structured sales data into information that can support business decision-making.