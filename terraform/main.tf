terraform {
  backend "s3" {
    bucket = "mbtodo-bucket"
    key = "tf-circle-ecr-test"
    region = "us-east-1"
  }

  required_providers {
    circleci = {
      source = "mrolla/circleci"
      version = "0.4.0"
    }
  }
}

provider "aws" {
        profile = "test"
        region = var.region
}

provider "circleci" {
        api_token = var.circleci_cli_token
        organization = var.organization
}