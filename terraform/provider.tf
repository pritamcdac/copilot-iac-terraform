# Configure the AWS provider with an intentionally outdated version constraint
terraform {
  required_version = ">= 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Intentionally outdated for upgrade testing
    }
  }
}

provider "aws" {
  region = var.aws_region
}
