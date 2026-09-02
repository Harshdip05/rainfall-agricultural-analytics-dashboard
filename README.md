# Rainfall & Agricultural Analytics Dashboard

## Overview

An end-to-end cloud data analytics project that processes
rainfall and agricultural data using AWS S3, Snowflake, SQL,
and Power BI.

## Architecture

CSV Dataset
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
Snowflake Table
    ↓
SQL Analysis
    ↓
Power BI Dashboard

## Technologies

- AWS S3
- AWS IAM
- Snowflake
- SQL
- Power BI

## Dataset

The dataset contains year-wise and seasonal agricultural
observations from 2004 to 2019.

It includes rainfall, temperature, humidity, soil type,
irrigation, crop, yield, price, location and season.

## Data Pipeline

### 1. Data Storage

The raw CSV file is stored in an AWS S3 bucket.

### 2. Security

AWS IAM permissions are configured to allow Snowflake
to access the required S3 resources.

### 3. Snowflake Integration

A Snowflake Storage Integration is configured to establish
a secure connection between Snowflake and AWS S3.

### 4. External Stage

A Snowflake external stage points to the S3 location.

### 5. Data Loading

The COPY INTO command loads CSV data from the external
stage into a Snowflake table.

### 6. Data Analysis

SQL is used for data validation, cleaning and analytical
queries.

### 7. Visualization

Power BI connects to Snowflake and provides interactive
dashboards.

## Key Insights

- Rainfall patterns vary across locations.
- Seasonal and yearly differences can be analyzed.
- Crop yield can be compared across crops and environmental
  conditions.
- Agricultural and economic metrics can be explored together.

## Security

Sensitive credentials are intentionally excluded.

AWS ARNs, bucket names and external IDs are represented
using placeholders where applicable.

No AWS access keys, secret keys, passwords or private keys
are stored in this repository.