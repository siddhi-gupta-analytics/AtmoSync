# AtmoSync

**Micro-Climate Arbitrage Analytics – Data Analytics Internship Project**

AtmoSync is a data analytics project focused on analyzing container sensor telemetry, commodity information, market prices, and transportation routes to support data-driven decision-making in supply chain and micro-climate analytics.

## Project Overview

The project combines data collection, data validation, SQL-based analysis, and reporting to examine the quality and consistency of datasets related to container monitoring and market analytics.

## Data Sources

The project currently works with the following datasets:

- **Sensor Data** – Container temperature, humidity, and vibration measurements.
- **Commodity Data** – Commodity information and associated identifiers.
- **Market Prices** – Market price information, including available price metrics.
- **Transport Routes** – Route details and transportation-related information.
- **Data Sources** – Information about the datasets and their origins.

## Project Work Completed

- Reviewed and analyzed the provided Excel datasets.
- Performed data quality and validation checks.
- Identified missing values, duplicate records, and potential outliers.
- Examined sensor readings and timestamp consistency.
- Developed SQL scripts for database setup, table definitions, data insertion, and validation.
- Prepared a validated Excel workbook containing validation summaries, outlier screening, and vibration flags.
- Generated detailed Excel and SQL validation reports.
- Added a consolidated SQL validation summary covering record counts, duplicates, missing values, timestamp consistency, and data range checks.
- Added a data quality scorecard summarizing the validation status of individual datasets.

## Data Validation

Validation activities include:

- Missing-value analysis
- Duplicate-record checks
- Sensor timestamp interval checks
- Temperature, humidity, and vibration range checks
- Vibration outlier screening using the Interquartile Range (IQR) method
- Commodity data validation
- Market price validation
- Transportation route data validation

Potential anomalies are identified for analysis without automatically modifying or deleting the original source records.
Validation findings and expected results are documented in the Excel and SQL validation reports. SQL validation queries have been prepared, but execution in MySQL is pending.

## Project Files

| File | Description |
|---|---|
| `AtmoSyncl_MySQL.sql` | SQL database creation, table definitions, data insertion, and validation queries |
| `AtmoSync_Final_Validated.xlsx` | Validated workbook with summary and screening sheets |
| `AtmoSync_Data_Cleaning_Validation_Report.docx` | Detailed data cleaning and validation report |
| `AtmoSync_Excel_Validation_Report.txt` | Excel dataset validation summary |
| `AtmoSync_SQL_Validation_Report.txt` | SQL validation documentation and expected results |

## Technologies Used

- SQL
- MySQL
- Microsoft Excel
- Data Cleaning
- Data Validation
- Data Analysis

## Project Objective

The objective of AtmoSync is to establish a structured data validation and analytics workflow that improves data reliability and supports further analysis of container telemetry, commodities, market prices, and transportation information.

---

**Project:** AtmoSync  
**Category:** Data Analytics Internship Project