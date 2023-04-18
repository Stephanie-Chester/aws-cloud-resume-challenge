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

resource "aws_route53_zone" "ns_record" {
  name = "stephaniechester.live"
}

resource "aws_route53_record" "ns_record" {
  allow_overwrite = true
  name            = "stephaniechester.live"
  ttl             = 172800
  type            = "NS"
  zone_id         = aws_route53_zone.ns_record.zone_id

  records = [
    aws_route53_zone.ns_record.name_servers[0],
    aws_route53_zone.ns_record.name_servers[1],
    aws_route53_zone.ns_record.name_servers[2],
    aws_route53_zone.ns_record.name_servers[3],
  ]
}