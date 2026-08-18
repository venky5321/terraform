terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.60.0"
    }
  }
  backend "s3" {
    bucket = "venkychow-remote-state"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "venkychow-locking"
  }
}


#provider authentication here
provider "aws" {
  region = "us-east-1"
}