# Amazon S3

Amazon S3 is used as the raw data storage layer in this project.

The rainfall and agricultural CSV dataset is uploaded to an
S3 bucket before being loaded into Snowflake.

## Purpose

S3 provides:

- Cloud-based data storage
- Scalable object storage
- Separation between raw data and analytics
- Integration with Snowflake

## Example Bucket Structure

```text
<YOUR_BUCKET_NAME>/
│
└── rainfall-data/
    └── data_season.csv