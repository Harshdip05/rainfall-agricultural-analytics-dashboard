# Project Flow

## 1. Dataset

The project starts with a rainfall and agricultural CSV dataset
containing year-wise and seasonal observations from 2004 to 2019.

The dataset includes:

- Year
- Location
- Area
- Rainfall
- Temperature
- Soil Type
- Irrigation
- Yield
- Humidity
- Crops
- Price
- Season

---

## 2. Upload Data to AWS S3

The raw CSV file is uploaded to an Amazon S3 bucket.

S3 acts as the cloud storage layer for the raw data.

Example:

s3://<YOUR_BUCKET_NAME>/rainfall-data/data_season.csv

---

## 3. AWS IAM

An IAM role is configured to provide controlled access
to the S3 bucket.

The required permissions allow the Snowflake integration
to list the bucket and read the required objects.

Typical permissions include:

- s3:ListBucket
- s3:GetObject

---

## 4. Snowflake Storage Integration

A Snowflake Storage Integration is created to establish
a secure connection between Snowflake and Amazon S3.

Environment-specific values such as the AWS role ARN are
represented using placeholders in this repository.

---

## 5. External Stage

A Snowflake external stage is created to point to the
S3 location containing the CSV data.

The stage uses the Snowflake Storage Integration.

---

## 6. Data Loading

The COPY INTO command is used to load the CSV data from
the external stage into the Snowflake table.

---

## 7. Data Validation

After loading the data, SQL queries are used to validate
the dataset.

Examples:

- Record count
- Missing values
- Duplicate records
- Minimum and maximum values
- Basic data quality checks

---

## 8. SQL Analysis

Analytical SQL queries are used to identify patterns
in the rainfall and agricultural data.

Examples include:

- Rainfall by year
- Rainfall by location
- Rainfall by season
- Crop-wise yield
- Crop-wise price
- Irrigation vs yield
- Soil type vs yield
- Rainfall vs yield

---

## 9. Power BI

Snowflake is connected to Power BI.

The analyzed data is visualized through interactive
charts, KPIs and filters.

The dashboard allows users to explore rainfall and
agricultural patterns by different dimensions.

---

## 10. Final Outcome

The project transforms raw agricultural data into
meaningful visual insights through an end-to-end
cloud analytics pipeline.

CSV
→ AWS S3
→ Snowflake
→ SQL
→ Power BI
→ Insights