terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }

   backend "s3" {
    bucket = "practice-state"
    key    = "remote-state-demo" #every repo should have unique key
    region = "us-east-1"
    dynamodb_table = "table_dynamo"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}