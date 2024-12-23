terraform {
  required_version = "~> 1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.61.0"
    }
  }

  backend "s3" {
    bucket = "nextjs-tf-state"
    key    = "/"
    region = "us-west-1"
    dynamodb_table = "terraform-lock"
  }
}
