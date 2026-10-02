# AWS S3 Documentation

## 1. Overview

Amazon Simple Storage Service (Amazon S3) is used as the cloud storage layer for the Retail Sales Data Warehouse project.

The raw retail sales dataset is stored in an S3 bucket before being processed and used by the downstream data warehouse and analytics components.

## 2. Role of S3 in the Project

S3 provides durable and scalable object storage for the project.

The overall data flow is:

```text
Retail Sales CSV
       ↓
    AWS S3
       ↓
  Data Processing
       ↓
   Snowflake
       ↓
    Power BI
```

S3 acts as the cloud-based storage layer between the source dataset and the data processing/data warehouse components.

## 3. S3 Bucket

A dedicated S3 bucket was created for the project.

Bucket name:

```text
retail-sales-s3-project-2026
```

The bucket is used to store the retail sales project data.

## 4. S3 Folder Structure

The bucket was organized using separate folders for raw and processed data.

```text
retail-sales-s3-project-2026
│
├── raw/
│   └── retail_sales_dataset.csv
│
└── processed/
```

### Raw Data

The `raw/` folder contains the original source dataset.

The raw dataset is preserved without modifying the original source data.

### Processed Data

The `processed/` folder is intended for data generated after the transformation and processing stage.

This separation follows a common data engineering practice of keeping source data separate from processed data.

## 5. Dataset

The project uses a retail sales dataset containing transaction-level information.

Main columns include:

* Transaction ID
* Date
* Customer ID
* Gender
* Age
* Product Category
* Quantity
* Price per Unit
* Total Amount

## 6. Data Engineering Workflow

The S3 storage layer is part of the following workflow:

1. Obtain the retail sales CSV dataset.
2. Upload the source dataset to the S3 `raw/` folder.
3. Process and validate the data using the project's ETL workflow.
4. Store processed data in the appropriate processed-data location.
5. Load the data into Snowflake for analytical querying.
6. Connect the analytical data to Power BI for visualization.

## 7. Why S3 Was Used

S3 was selected because it provides:

* Cloud-based object storage
* High durability
* Scalable storage
* Separation of raw and processed data
* Integration with AWS data-processing services
* A suitable storage layer for data engineering pipelines

## 8. Key AWS Concepts Used

### Bucket

An S3 bucket is a container used to store objects.

In this project, the bucket is:

```text
retail-sales-s3-project-2026
```

### Object

The uploaded CSV file is an S3 object.

Example:

```text
raw/retail_sales_dataset.csv
```

### Folder

The `raw/` and `processed/` paths provide logical organization of objects within the bucket.

### Storage Class

The raw dataset was stored using the standard S3 storage configuration suitable for frequently accessed project data.

## 9. Project Learning

Through this implementation, the following AWS S3 concepts were practiced:

* Creating an S3 bucket
* Uploading objects
* Organizing data using prefixes/folders
* Separating raw and processed data
* Understanding cloud object storage
* Using S3 as part of a data engineering architecture

## 10. Screenshots

Relevant AWS S3 screenshots are maintained in the project's `screenshots/` directory.

Recommended screenshots include:

1. S3 bucket overview
2. `raw/` folder containing the dataset
3. `processed/` folder
4. Uploaded CSV object details

## 11. Security Considerations

The S3 bucket should remain private unless public access is explicitly required.

Recommended practices include:

* Keep Block Public Access enabled.
* Grant only the permissions required by project services/users.
* Avoid storing credentials or secrets in S3.
* Use IAM permissions to control access.
* Delete unused cloud resources when they are no longer required.

## 12. Summary

Amazon S3 provides the cloud storage foundation for the Retail Sales Data Warehouse project.

The project uses S3 to organize and store raw retail sales data before it moves through the data engineering pipeline toward Snowflake and Power BI.

This demonstrates the use of AWS cloud storage as part of a practical end-to-end data engineering architecture.