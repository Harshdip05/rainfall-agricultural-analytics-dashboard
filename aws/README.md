# AWS Configuration

AWS services are used as the cloud storage and access-control
layer of the Rainfall & Agricultural Analytics project.

## AWS Services Used

### Amazon S3

Amazon S3 is used to store the raw rainfall and agricultural
CSV dataset before it is loaded into Snowflake.

### AWS IAM

AWS IAM is used to control access between Snowflake and the
S3 bucket.

An IAM role is configured with the required permissions so
that Snowflake can access the required S3 objects.

## Architecture

CSV Dataset
     ↓
Amazon S3
     ↓
AWS IAM Role
     ↓
Snowflake Storage Integration
     ↓
Snowflake External Stage
     ↓
Snowflake Table

## S3

The raw dataset is stored in an S3 bucket.

Example structure:

s3://<YOUR_BUCKET_NAME>/rainfall-data/data_season.csv

Replace `<YOUR_BUCKET_NAME>` with your own bucket name.

## IAM

An IAM role is used to provide Snowflake with controlled
access to the S3 bucket.

Required permissions include:

- s3:GetObject
- s3:ListBucket

The actual AWS account ID, bucket name, role ARN and
external ID are intentionally replaced with placeholders
in this repository.

## Security

No AWS access keys, secret keys, passwords or private keys
are stored in this repository.

Account-specific values are represented using placeholders.

## Connection With Snowflake

Snowflake Storage Integration is used to establish the
AWS S3 connection.

The Snowflake external stage then references the S3 location
through the storage integration.

Data is loaded into Snowflake using COPY INTO.