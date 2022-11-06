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
  access_key = AKIARIWRU73FRCQ2NAHZ
  secret_key = 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
  region = var.region
}