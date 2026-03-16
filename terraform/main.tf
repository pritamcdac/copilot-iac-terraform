# Create an S3 bucket
resource "aws_s3_bucket" "sample" {
  bucket = var.bucket_name
  # Additional configuration can be added here
}

# Set S3 bucket ACL to private
resource "aws_s3_bucket_acl" "sample" {
  bucket = aws_s3_bucket.sample.id
  acl    = "private"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "sample-vpc"
  }
}
