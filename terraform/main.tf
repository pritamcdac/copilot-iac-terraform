# Create an S3 bucket
resource "aws_s3_bucket" "sample" {
  bucket = var.bucket_name
  acl    = "private"
  # Additional configuration can be added here
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "sample-vpc"
  }
}
