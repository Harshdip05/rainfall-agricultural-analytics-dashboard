# Power BI Dashboard

## Overview

The Power BI dashboard is the visualization layer of the
Rainfall & Agricultural Analytics project.

It connects to the data processed and stored in Snowflake
and provides interactive visualizations for analyzing
rainfall and agricultural patterns.

## Dashboard Objectives

The dashboard is designed to help users:

- Analyze rainfall trends across years
- Compare rainfall across different locations
- Analyze rainfall across seasons
- Compare crop yields
- Analyze irrigation methods and yield
- Compare soil types and agricultural performance
- Explore temperature and humidity patterns
- Analyze crop prices

## Key Dashboard Visualizations

### Rainfall Analysis

- Year-wise rainfall trends
- Average rainfall
- Maximum rainfall
- Location-wise rainfall
- Season-wise rainfall

### Agricultural Analysis

- Crop-wise average yield
- Irrigation vs yield
- Soil type vs yield
- Crop-wise price analysis

### Environmental Analysis

- Temperature analysis
- Humidity analysis
- Rainfall vs yield relationship

## Interactive Filters

The dashboard allows users to filter the analysis by:

- Year
- Location
- Season
- Crop
- Soil Type
- Irrigation

These filters allow users to explore specific subsets of
the dataset without manually querying the database.

## Data Source

The dashboard uses data processed and stored in Snowflake.

Data flow:

AWS S3
   ↓
Snowflake
   ↓
SQL Analysis
   ↓
Power BI
   ↓
Interactive Dashboard

## Dashboard Screenshots

Dashboard screenshots are available in the
`dashboard-screenshots/` directory.

## Technologies Used

- Power BI
- Snowflake
- SQL
- AWS S3

## Important Note

The Power BI dashboard is used primarily as the visualization
and reporting layer. Data storage and SQL-based processing
are handled through Snowflake.

Sensitive connection details and credentials are not included
in this repository.