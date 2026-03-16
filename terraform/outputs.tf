# Output the S3 bucket name and VPC ID
output "bucket_name" {
  description = "The name of the S3 bucket."
  value       = aws_s3_bucket.sample.bucket
}

output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}
