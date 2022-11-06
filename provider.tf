# Configure various versions of AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  access_key = "NOT GIVEN FOR SECURITY"
  secret_key = "NOT GIVEN FOR SECURITY"
  region = var.region
}