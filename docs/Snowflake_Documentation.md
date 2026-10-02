# Snowflake Documentation

## 1. Overview

Snowflake is used as the cloud data warehouse component of the Retail Sales Data Warehouse project.

The purpose of Snowflake in this project is to provide a centralized platform for storing and querying retail sales data for analytical workloads.

## 2. Role of Snowflake in the Project

Snowflake acts as the analytical data warehouse between the data processing layer and the visualization layer.

The overall architecture is:

```text
Retail Sales Dataset
        ↓
      AWS S3
        ↓
 Data Processing / ETL
        ↓
     Snowflake
        ↓
      Power BI
```

## 3. Data Warehouse Structure

The Snowflake environment is organized using the standard hierarchy:

```text
Snowflake Account
       │
       └── Database
             │
             └── Schema
                   │
                   └── Table
```

The retail sales data is stored in a table designed for analytical queries.

Example table:

```text
retail_sales
```

## 4. Retail Sales Table

The retail sales table contains transaction-level sales information.

Main fields include:

| Column           | Description                   |
| ---------------- | ----------------------------- |
| Transaction ID   | Unique transaction identifier |
| Date             | Transaction date              |
| Customer ID      | Customer identifier           |
| Gender           | Customer gender               |
| Age              | Customer age                  |
| Product Category | Category of purchased product |
| Quantity         | Number of units purchased     |
| Price per Unit   | Price of one unit             |
| Total Amount     | Total transaction value       |

## 5. Loading Data

The retail sales dataset is prepared through the project's ETL process before being used for analytical purposes.

The general data-loading process is:

1. Store the source dataset in AWS S3.
2. Process and validate the dataset.
3. Prepare the data for the warehouse.
4. Load the data into Snowflake.
5. Store the data in the retail sales table.
6. Execute analytical SQL queries.

## 6. Analytical SQL

Once the data is available in Snowflake, SQL can be used to answer business questions.

The project includes queries for:

* Total number of transactions
* Total sales
* Total quantity sold
* Sales by product category
* Quantity by product category
* Monthly sales
* Sales by gender
* Average transaction value
* Top customers by spending
* Top transactions
* Sales by age group

The SQL queries are maintained separately in:

```text
sql/retail_sales_analysis.sql
```

## 7. Example Analytical Queries

### Total Sales

```sql
SELECT SUM(total_amount) AS total_sales
FROM retail_sales;
```

This calculates the total sales amount across all transactions.

### Sales by Product Category

```sql
SELECT
    product_category,
    SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY product_category
ORDER BY total_sales DESC;
```

This groups transactions by product category and calculates sales for each category.

### Top Customers

```sql
SELECT
    customer_id,
    SUM(total_amount) AS total_spending
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;
```

This identifies the customers with the highest total spending.

## 8. Why Snowflake Was Used

Snowflake is suitable for this project because it provides:

* Cloud-based data warehousing
* SQL-based analytical querying
* Scalable data storage and processing
* Separation of storage and compute
* Integration with business intelligence tools
* Support for analytical workloads

## 9. Snowflake and Power BI

Snowflake serves as the analytical data source for the Power BI dashboard.

The conceptual flow is:

```text
Snowflake
    ↓
Analytical SQL / Data
    ↓
Power BI
    ↓
Interactive Dashboard
```

Power BI can use the warehouse data to create visualizations such as:

* Total sales
* Transaction count
* Sales by category
* Sales trends
* Customer analysis
* Demographic analysis

## 10. Project Learning

Through this project, the following Snowflake/data warehouse concepts were practiced:

* Cloud data warehousing
* Database and schema organization
* Analytical tables
* SQL aggregation
* GROUP BY and ORDER BY
* Data warehouse integration
* Connecting warehouse data to BI tools

## 11. Security Considerations

Snowflake access should follow the principle of least privilege.

Recommended practices include:

* Use appropriate roles for users and services.
* Grant only required permissions.
* Avoid sharing credentials.
* Use secure authentication methods.
* Remove unused users, roles, and credentials.
* Monitor warehouse usage to avoid unnecessary costs.

## 12. Screenshots

Relevant Snowflake screenshots should be maintained in the project's `screenshots/` directory.

Recommended screenshots include:

1. Snowflake account/workspace
2. Database and schema
3. Retail sales table
4. Loaded data
5. SQL query execution
6. Query results

## 13. Summary

Snowflake provides the cloud data warehouse layer of the Retail Sales Data Warehouse project.

It stores the prepared retail sales data and enables analytical SQL queries. The resulting data is then used by Power BI to create business dashboards and visualizations.