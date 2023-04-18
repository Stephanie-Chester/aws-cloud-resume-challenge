terraform {
  cloud {
    organization = "AWS_CloudResume"
    workspaces {
      name = "AWS_CloudResume_frontend"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}