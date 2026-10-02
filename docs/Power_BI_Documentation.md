# Power BI Documentation

## 1. Overview

Microsoft Power BI is used as the business intelligence and visualization layer of the Retail Sales Data Warehouse project.

The dashboard provides a visual representation of retail sales data and helps analyze sales performance, product categories, transactions, and customer-related information.

## 2. Role of Power BI in the Project

Power BI is the final analytics and visualization layer.

The overall project flow is:

```text
Retail Sales Dataset
        ↓
      AWS S3
        ↓
    ETL Pipeline
        ↓
     Snowflake
        ↓
      Power BI
        ↓
   Interactive Dashboard
```

## 3. Data Source

The Power BI dashboard uses analytical retail sales data prepared through the project's data engineering pipeline and stored in the cloud data warehouse.

The main analytical fields include:

* Transaction ID
* Date
* Customer ID
* Gender
* Age
* Product Category
* Quantity
* Price per Unit
* Total Amount

## 4. Dashboard Purpose

The dashboard is designed to provide an easy-to-understand view of retail sales performance.

It can be used to analyze:

* Overall sales
* Number of transactions
* Product category performance
* Sales trends
* Customer spending
* Quantity sold
* Customer demographics

## 5. Key Dashboard Metrics

The dashboard includes key metrics such as:

### Total Sales

Represents the total monetary value of all recorded transactions.

### Total Transactions

Represents the number of transactions in the dataset.

### Total Quantity

Represents the total number of units sold.

### Average Transaction Value

Represents the average sales amount per transaction.

## 6. Dashboard Visualizations

The dashboard can contain visualizations such as:

* KPI cards
* Sales by product category
* Monthly sales trend
* Sales by gender
* Sales by age group
* Top customers
* Transaction-level analysis

These visualizations provide different perspectives of the retail sales data.

## 7. Interactive Analysis

Power BI allows users to interact with the dashboard using filters and visual selections.

Examples include filtering the data by:

* Date
* Product category
* Gender
* Age group
* Customer

Selecting a value in one visualization can also affect other related visualizations when the dashboard relationships and interactions are configured accordingly.

## 8. Business Questions

The dashboard helps answer questions such as:

1. What are the total sales?
2. How many transactions were recorded?
3. Which product categories generated sales?
4. How do sales change over time?
5. Which customers have the highest spending?
6. How are sales distributed across customer demographics?
7. What is the average transaction value?

## 9. Project Learning

Through the Power BI implementation, the following concepts were practiced:

* Connecting BI tools to analytical data
* Creating KPI cards
* Creating charts and graphs
* Applying filters
* Building an interactive dashboard
* Presenting analytical results visually
* Turning raw analytical data into business insights

## 10. Dashboard Screenshots

Screenshots of the completed Power BI dashboard are stored in:

```text
screenshots/
```

Recommended screenshots include:

1. Complete dashboard
2. Sales KPI section
3. Product category analysis
4. Sales trend visualization
5. Customer analysis
6. Dashboard filters/slicers

## 11. Architecture Integration

Power BI completes the end-to-end cloud analytics architecture:

```text
             ┌───────────────┐
             │ Retail Sales  │
             │    Dataset    │
             └───────┬───────┘
                     ↓
             ┌───────────────┐
             │    AWS S3     │
             │ Raw / Storage │
             └───────┬───────┘
                     ↓
             ┌───────────────┐
             │ ETL Pipeline  │
             │ Processing    │
             └───────┬───────┘
                     ↓
             ┌───────────────┐
             │   Snowflake   │
             │ Data Warehouse│
             └───────┬───────┘
                     ↓
             ┌───────────────┐
             │    Power BI   │
             │   Dashboard   │
             └───────────────┘
```

## 12. Summary

Power BI provides the visualization layer for the Retail Sales Data Warehouse project.

It transforms analytical data from Snowflake into interactive dashboards that make sales and customer information easier to understand and explore.