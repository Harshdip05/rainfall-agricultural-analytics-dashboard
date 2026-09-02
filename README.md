# 🌧️ Rainfall & Agricultural Analytics Dashboard

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-Analytics-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI">
  <img src="https://img.shields.io/badge/AWS-S3-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS S3">
  <img src="https://img.shields.io/badge/Snowflake-Data%20Warehouse-29B5E8?style=for-the-badge&logo=snowflake&logoColor=white" alt="Snowflake">
  <img src="https://img.shields.io/badge/SQL-Analysis-336791?style=for-the-badge&logo=postgresql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/GitHub-Version%20Control-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
</p>

<p align="center">
  <b>End-to-End Cloud Data Engineering & Business Intelligence Project</b>
</p>

<p align="center">
  Raw Data → AWS S3 → Snowflake → SQL Analysis → Power BI Dashboard
</p>

---

## 📌 Overview

**Rainfall & Agricultural Analytics Dashboard** is an end-to-end cloud data analytics project that transforms raw rainfall and agricultural data into meaningful business insights using:

- ☁️ AWS S3
- 🔐 AWS IAM
- ❄️ Snowflake
- 🗄️ SQL
- 📊 Microsoft Power BI
- 🐙 Git & GitHub

The project demonstrates a complete data pipeline starting from **cloud-based raw data storage**, followed by **secure data ingestion into Snowflake**, **data validation and SQL analysis**, and finally **interactive visualization through Power BI**.

---

## 🎯 Project Objective

The objective of this project is to build an end-to-end cloud data pipeline for storing, processing, analyzing, and visualizing rainfall and agricultural data.

The project demonstrates how raw CSV data can move from cloud storage into a cloud data warehouse and finally into an interactive Business Intelligence dashboard.

### 🔎 The analysis focuses on:

- 🌧️ Rainfall
- 🌡️ Temperature
- 💧 Humidity
- 🌱 Crop types
- 🌾 Agricultural yield
- 🪨 Soil types
- 🚰 Irrigation
- 📍 Location
- 🍂 Season
- 💰 Price

---

# 🏗️ Project Architecture

```text
                         ┌─────────────────────┐
                         │     Raw CSV Data    │
                         └──────────┬──────────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │       AWS S3        │
                         │    Cloud Storage    │
                         └──────────┬──────────┘
                                    │
                              IAM Permissions
                                    │
                                    ▼
                    ┌──────────────────────────────┐
                    │   Snowflake Storage          │
                    │       Integration            │
                    └──────────────┬───────────────┘
                                   │
                                   ▼
                         ┌──────────────────┐
                         │  External Stage  │
                         └────────┬─────────┘
                                  │
                              COPY INTO
                                  │
                                  ▼
                         ┌──────────────────┐
                         │    Snowflake     │
                         │      Tables      │
                         └────────┬─────────┘
                                  │
                                  ▼
                         ┌──────────────────┐
                         │   SQL Analysis   │
                         │ & Data Quality   │
                         └────────┬─────────┘
                                  │
                                  ▼
                         ┌──────────────────┐
                         │     Power BI     │
                         │    Dashboard     │
                         └──────────────────┘
```
---

# 🔄 Data Flow

The project follows an end-to-end cloud analytics workflow, starting from raw agricultural data and ending with an interactive Power BI dashboard.

```text
┌─────────────────────────┐
│      Raw CSV Data       │
│ Rainfall & Agriculture  │
└────────────┬────────────┘
             │
             │ Upload
             ▼
┌─────────────────────────┐
│        AWS S3           │
│     Raw Data Layer      │
└────────────┬────────────┘
             │
             │ Secure Access
             │
             ▼
┌─────────────────────────┐
│        AWS IAM          │
│ Roles & Permissions     │
└────────────┬────────────┘
             │
             │ Authorized Access
             ▼
┌─────────────────────────┐
│ Snowflake Storage       │
│      Integration       │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│    External Stage       │
│   S3 File Reference     │
└────────────┬────────────┘
             │
             │ COPY INTO
             ▼
┌─────────────────────────┐
│       Snowflake         │
│     Target Tables      │
└────────────┬────────────┘
             │
             │ SQL
             ▼
┌─────────────────────────┐
│   Data Validation &     │
│    SQL Analysis         │
│                         │
│ • Missing Values        │
│ • Duplicate Checks      │
│ • Aggregations          │
│ • Rainfall Analysis     │
│ • Crop Analysis         │
└────────────┬────────────┘
             │
             │ Snowflake Connector
             ▼
┌─────────────────────────┐
│       Power BI          │
│   Data Visualization    │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│   Interactive Dashboard │
│                         │
│ • KPIs                 │
│ • Charts               │
│ • Slicers              │
│ • Filters              │
│ • Trends               │
└─────────────────────────┘
```
---

# 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| ☁️ **AWS S3** | Cloud-based storage for raw rainfall and agricultural CSV data |
| 🔐 **AWS IAM** | Secure access control and permissions for AWS resources |
| ❄️ **Snowflake** | Cloud data warehouse for storing and querying agricultural data |
| 🔗 **Snowflake Storage Integration** | Secure connection between Snowflake and AWS S3 |
| 📂 **External Stage** | Provides access to CSV files stored in AWS S3 |
| 📄 **CSV** | Source data format for rainfall and agricultural data |
| 🗄️ **SQL** | Data loading, validation, analysis, and querying |
| 📥 **COPY INTO** | Batch loading of CSV data from S3 into Snowflake |
| 📊 **Microsoft Power BI** | Interactive dashboards and data visualization |
| 📐 **DAX** | Creating calculated measures and KPIs in Power BI |
| 🔄 **Power Query** | Data preparation and transformation in Power BI |
| 🐙 **Git** | Version control |
| 🐙 **GitHub** | Source code hosting and project documentation |

---

# 🚀 Key Features

### ☁️ Cloud Data Storage
- Raw rainfall and agricultural data stored in **AWS S3**
- S3 acts as the cloud-based landing zone for the data pipeline
- Organized storage structure for source CSV files

### 🔐 Secure Cloud Access
- AWS IAM used for access control
- IAM roles and permissions used to allow Snowflake to access S3
- No AWS access keys or passwords stored in the repository

### ❄️ Snowflake Data Warehouse
- Snowflake used as the centralized cloud data warehouse
- External stage configured for S3 data access
- Storage Integration used for secure S3 connectivity

### 📥 Batch Data Ingestion
- CSV data loaded from S3 into Snowflake
- `COPY INTO` used for batch data loading
- Structured Snowflake tables created for analytics

### 🔍 Data Validation
- Row count verification
- Missing-value checks
- Duplicate checks
- Data-type validation
- Aggregation checks
- Data consistency checks

### 📈 SQL Analytics
- Average rainfall by location
- Rainfall analysis by season
- Year-wise rainfall trends
- Average yield by crop
- Crop and price analysis
- Temperature analysis
- Humidity analysis
- Irrigation analysis
- Soil type analysis

### 📊 Power BI Dashboard
- Interactive Power BI dashboard
- KPI cards
- Charts and visualizations
- Interactive slicers
- Year-wise analysis
- Location-based analysis
- Crop analysis
- Seasonal analysis
- Rainfall trends
- Agricultural performance analysis

### 🎛️ Interactive Filters

Users can dynamically filter the dashboard using:

- 📅 Year
- 📍 Location
- 🍂 Season
- 🌱 Crop
- 🪨 Soil Type
- 🚰 Irrigation

### 🔄 End-to-End Data Pipeline

```text
Raw CSV
   ↓
AWS S3
   ↓
AWS IAM
   ↓
Snowflake Storage Integration
   ↓
External Stage
   ↓
COPY INTO
   ↓
Snowflake
   ↓
SQL Validation & Analysis
   ↓
Power BI
   ↓
Interactive Dashboard

```
---

# Repsoitory Structure
```text
rainfall-agricultural-analytics/
│
├── 📄 README.md
├── 📄 LICENSE
├── 📄 .gitignore
│
├── ☁️ aws/
│   │
│   ├── 📄 README.md
│   │
│   ├── 🔐 iam/
│   │   ├── 📄 trust-policy-example.json
│   │   └── 📄 permissions-policy-example.json
│   │
│   └── 📦 s3/
│       └── 📄 README.md
│
├── ❄️ snowflake/
│   │
│   ├── 📄 01_database_schema.sql
│   ├── 📄 02_file_format.sql
│   ├── 📄 03_storage_integration.sql
│   ├── 📄 04_external_stage.sql
│   ├── 📄 05_create_table.sql
│   ├── 📄 06_copy_into.sql
│   ├── 📄 07_data_validation.sql
│   └── 📄 08_analysis_queries.sql
│
├── 📊 powerbi/
│   │
│   ├── 📄 README.md
│   │
│   └── 🖼️ dashboard-screenshots/
│       ├── 🖼️ overview.png
│       ├── 🖼️ rainfall-analysis.png
│       └── 🖼️ crop-analysis.png
│
├── 📂 data/
│   └── 📄 README.md
│
└── 📚 docs/
    │
    ├── 🖼️ architecture.png
    └── 📄 project-flow.md


```
---
## 🚀 Future Improvements

Potential improvements to the project include:

- 🔄 Automating data ingestion
- 📥 Implementing incremental data loading
- 🔍 Adding automated data-quality checks
- 📊 Creating additional Power BI measures using DAX
- 📈 Adding advanced agricultural KPIs
- 🔄 Implementing scheduled refreshes
- 📅 Adding historical trend analysis
- 🤖 Exploring predictive agricultural analytics
- ☁️ Automating infrastructure deployment
- ⚙️ Adding pipeline orchestration

---

## 📄 License

This project is licensed under the MIT License.

See the `LICENSE` file for details.

---

## 👤 Author

**Harshdip Nandre**

This project was created as a portfolio project to demonstrate practical skills in:

- Cloud Data Engineering
- AWS
- Snowflake
- SQL
- Data Analytics
- Business Intelligence
- Power BI
- Data Visualization

