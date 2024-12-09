# Azure Data Engineering Project

This repository showcases the implementation of a comprehensive data engineering pipeline using Microsoft Azure. The project involves ingesting data from APIs, transforming it using various Azure services, and visualizing the results with Power BI. It demonstrates the **Bronze-Silver-Gold** architecture for data storage and processing.

---

## Table of Contents
- [Project Overview](#project-overview)
- [Tools and Technologies](#tools-and-technologies)
- [Project Architecture](#project-architecture)
- [Detailed Phases](#detailed-phases)
  - [Phase 1: Data Ingestion](#phase-1-data-ingestion)
  - [Phase 2: Data Transformation](#phase-2-data-transformation)
  - [Phase 3: Data Serving and Visualization](#phase-3-data-serving-and-visualization)
- [Lessons Learned](#lessons-learned)
- [Appendices](#appendices)

---

## Project Overview

The aim of this project is to build an end-to-end data engineering pipeline that processes raw data from an external API, transforms it, and serves it for analysis using Azure Synapse Analytics and Power BI.

### Key Objectives
1. Create and configure Azure resources to ingest, store, and process data.
2. Implement a multi-layered data architecture:
   - **Bronze**: Raw data storage.
   - **Silver**: Transformed and cleaned data.
   - **Gold**: Data ready for analytics and reporting.
3. Perform data transformations using Azure Data Factory and Databricks.
4. Visualize insights using Power BI dashboards.

---

## Tools and Technologies

The following tools were used to complete the project:

- **Cloud Platform:** Azure
- **Storage:** Azure Data Lake Gen2
- **Data Integration:** Azure Data Factory
- **Big Data Processing:** Azure Databricks (PySpark)
- **Data Warehousing:** Azure Synapse Analytics
- **Visualization:** Power BI
- **File Formats:** Parquet, CSV
- **Programming Languages:** Python, SQL

---

## Project Architecture

The project employs a **multi-layered architecture**:
1. **Bronze Layer**: Stores raw data fetched from the API.
2. **Silver Layer**: Stores cleaned and transformed data.
3. **Gold Layer**: Stores analytics-ready data used for dashboards.

![alt text](https://github.com/chandima2000/azure-data-engineering-project/blob/ca413604bde3e008ea5dd6fbcbef95ff94d6a0e4/images/overview.png)

---

## Detailed Phases

### Phase 1: Data Ingestion

1. **Azure Resources Setup**:
   - Created a new resource group and a storage account with **Hierarchical Namespace** enabled.
   - Created containers for the **Bronze**, **Silver**, and **Gold** layers in Azure Data Lake Gen2.
   
2. **Azure Data Factory (ADF)**:
   - Created a static pipeline to fetch data from a GitHub API.
   - Configured linked services for GitHub API (source) and Data Lake Gen2 (sink).
   - Defined datasets in CSV format for both source and destination.

3. **Pipeline Execution**:
   - Executed the pipeline and verified the raw data in the **Bronze layer**.

### Phase 2: Data Transformation

1. **Azure Databricks**:
   - Created an Apache Spark cluster for data processing.
   - Used PySpark notebooks to clean and transform data.
   - Loaded the processed data into the **Silver layer**.

2. **Storage Access**:
   - Registered an application in Microsoft Entra ID for secure access.
   - Assigned roles such as **Storage Blob Data Contributor** to enable data operations.

3. **File Format**:
   - Converted data into **Parquet format** for efficient storage and querying.

### Phase 3: Data Serving and Visualization

1. **Azure Synapse Analytics**:
   - Configured a dedicated SQL pool for the **Gold layer**.
   - Created schemas and views to enable SQL-based data exploration.

2. **Power BI Integration**:
   - Connected Power BI to the Synapse Analytics SQL pool.
   - Designed interactive dashboards using data from the **Gold layer**.

---

## Lessons Learned

1. **Technical Insights**:
   - Optimized ETL pipelines for scalability and performance.
   - Gained experience in handling structured and unstructured data.

2. **Strategic Insights**:
   - Leveraged Azure's cost-effective services like serverless SQL pools.
   - Applied best practices for resource management and access control.

3. **Collaboration**:
   - Enhanced team collaboration through Azure Role-Based Access Control (RBAC).

---

## Appendices

### References
- [Azure Data Factory Documentation](https://learn.microsoft.com/en-us/azure/data-factory/)
- [Azure Synapse Analytics Documentation](https://learn.microsoft.com/en-us/azure/synapse-analytics/)
- [Power BI Documentation](https://learn.microsoft.com/en-us/power-bi/)

---

