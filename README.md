# Sales Data Analysis Using SQL and Tableau

## 1. Project Overview

This project focuses on analysing sales data to evaluate business performance, identify patterns, and generate insights that can support informed business decisions.

The project involved exploring a relational sales dataset using SQL, conducting business-focused analysis, and presenting the results through an interactive Tableau dashboard.

The analysis examines customer performance, product categories, sales trends, geographical distribution, and other relevant business metrics.

## 2. Project Objectives

The main objectives of this project are to:

- Explore and understand the structure of a relational sales database.
- Examine customer and product information.
- Analyse sales performance and identify trends over time.
- Identify top-performing customers.
- Evaluate revenue across product categories.
- Examine customer distribution and sales activity across countries.
- Generate meaningful insights to support business decision-making.

## 3. Tools and Technologies

- **SQL Server (T-SQL):** Database exploration, querying, and analysis.
- **Tableau Public:** Data visualisation and interactive dashboard development.
- **GitHub:** Project documentation, version control, and code storage.

## 4. Dataset Description

The project uses a relational sales dataset organised into three main tables:

| Table | Description |
|---|---|
| `dim_customers` | Contains customer-related information. |
| `dim_products` | Contains product-related information. |
| `fact_sales` | Contains sales transaction records and associated measures. |

The dataset follows a relational structure in which dimension tables provide descriptive information, while the fact table stores transactional data.

## 5. SQL Analysis Performed

The SQL analysis was organised into different stages to examine the database and generate business-focused reports.

The major areas covered include:

1. Database exploration.
2. Dimension table exploration.
3. Date range exploration.
4. Data segmentation.
5. Part-to-whole analysis.
6. Customer performance reporting.
7. Product performance reporting.

### SQL Concepts Applied

The analysis involved the use of:

- SELECT and WHERE statements.
- GROUP BY and ORDER BY.
- Aggregate functions.
- JOIN operations.
- CASE statements.
- Subqueries.
- Common Table Expressions (CTEs).
- Data aggregation and segmentation.

These techniques were used to explore the dataset, summarise information, and generate analytical reports.

## 6. Data Quality and Limitations

Data quality is an important consideration when interpreting analytical results.

During the review of the dataset and its visualisation, some records were identified with country information displayed as **"Unknown / missing."**

These records were retained rather than automatically removed or assigned to another country because their correct country attribution could not be established.

The decision to retain these records was made to preserve transparency and avoid introducing assumptions into the analysis.

### Potential Impact

- Records with unknown country information may affect the interpretation of country-level comparisons.
- Country-based revenue and customer distributions should therefore be interpreted with this limitation in mind.
- Further investigation would be required to establish the correct country attribution.

The source of the missing country information was not conclusively established. Therefore, no assumption was made about whether the issue originated from the original dataset or during data preparation.

## 7. Tableau Dashboard and Visualisations

An interactive dashboard was developed using Tableau Public to communicate the results of the sales performance analysis.

The dashboard contains six visualisations:

1. Top 10 Customers by Revenue.
2. Yearly Sales Trend.
3. Quantity Sold by Country.
4. Customers by Country.
5. Average Cost by Category.
6. Revenue by Product Category.

The visualisations provide different perspectives on sales performance, customer contribution, product categories, and geographical distribution.

### View the Interactive Dashboard

https://public.tableau.com/views/Sales_Performance_Dashboard_17933600461630/Dashboard2

## 8. Repository Structure

The project repository is organised as follows:

```text
EDA-task/
│
├── README.md
│
├── SCRIPTS/
│   └── SQL analysis scripts
│
└── datasets/
    └── flat_files/
        ├── README.md
        ├── dim_customers.csv
        ├── dim_products.csv
        └── fact_sales.csv
```

## 9. Key Learning Outcomes

Through this project, I gained practical experience in:

- Working with relational databases.
- Writing SQL queries for business analysis.
- Exploring and analysing structured datasets.
- Applying joins and aggregate functions.
- Performing customer and product performance analysis.
- Recognising data quality issues and understanding their implications.
- Developing interactive dashboards using Tableau.
- Documenting and managing analytical projects using GitHub.

## 10. Conclusion

This project demonstrates how SQL and data visualisation can be combined to transform structured sales data into meaningful business information.

By exploring customer behaviour, product performance, sales trends, and geographical distribution, the analysis provides a foundation for understanding business performance and supporting data-informed decisions.

It also highlights the importance of recognising data quality limitations when interpreting analytical results.

## Author

**Precious Nwango**

GitHub: https://github.com/Nwango

Tableau Public: https://public.tableau.com/app/profile/precious.nwango
