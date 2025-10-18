# Covid19_analysis_using_Synapse
## 📘 Overview

This project demonstrates an end-to-end data engineering and analytics workflow built using Microsoft Azure Synapse Analytics and Power BI.

The goal was to transform raw COVID-19 data into meaningful insights by designing a scalable data pipeline, cleaning and transforming the data with SQL scripts in Synapse, and visualizing the results through an interactive Power BI dashboard.

## 🚀 Objectives

Build a complete data engineering pipeline using Azure Synapse Analytics.

Perform data cleaning, transformation, and aggregation using T-SQL.

Create analytical views optimized for Power BI connectivity.

Design an interactive dashboard for global COVID-19 insights.

## 🧰 Tech Stack
Tool	Purpose
Microsoft Azure Synapse Analytics	Cloud-based data warehouse for large-scale data processing
T-SQL	Data cleaning, transformation, and analytical view creation
Power BI	Data visualization and dashboard creation
Azure Data Services	Cloud environment for integrated data analysis
## ⚙️ Project Workflow
### 1️⃣ Schema Design & Data Ingestion

The project began with designing a clean and optimized schema in Azure Synapse Analytics.
A new table named COVID_INFO was created with appropriate data types and indexing for performance.
To improve query speed, a CLUSTERED COLUMNSTORE INDEX was applied—perfect for analytical workloads.

📎 Screenshot of SQL table creation and ingestion scripts goes here:
(Paste below)

### 2️⃣ Data Cleaning & Transformation

After ingestion, the data was processed and cleaned using T-SQL in Synapse.
This involved:

Converting raw columns to correct data types (e.g., updated → DATE)

Removing invalid or incomplete records

Aggregating data at country and date levels

Ensuring consistency in location naming

Several views were created to prepare the data for visualization and improve dashboard performance:

vu_top_countries – Top 10 countries by total confirmed cases

vu_covid_summary – Aggregated global statistics (confirmed, recovered, active)

vu_covid_trend – Date-based analysis for trend visualization

vu_location – Location-based summaries for mapping insights

📎 Screenshot of transformation and view creation scripts goes here:
(Paste below)

### 3️⃣ Data Visualization — Power BI Dashboard

The cleaned and structured data was connected from Azure Synapse directly into Power BI.
The resulting dashboard provides an intuitive and interactive way to explore global COVID-19 metrics, including:

🌍 Top affected countries by total confirmed cases

📈 Trend analysis showing case growth over time

💡 Summary cards for confirmed, recovered, deaths, and active cases

🗺️ Geographical visualization to highlight country-level impact
