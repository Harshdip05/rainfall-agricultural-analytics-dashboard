# AWS IAM Configuration

AWS IAM is used to securely control access to the S3 bucket.

## IAM Role

An IAM role is created for Snowflake.

The role allows Snowflake to access the required S3 resources
without storing AWS access keys directly inside Snowflake SQL.

## Permissions

The role requires permissions to:

- List the required S3 bucket
- Read objects from the required S3 path

Example permissions:

- `s3:ListBucket`
- `s3:GetObject`

## Trust Relationship

The IAM role contains a trust policy that allows the required
Snowflake identity to assume the role.

An external ID is used as part of the trust relationship.

See:

`trust-policy-example.json`

## Security

Real AWS account IDs, role ARNs, external IDs and credentials
are not included in this repository.

The JSON files contain placeholders only.