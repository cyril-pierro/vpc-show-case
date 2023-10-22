terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    test = {
      source = "terraform.io/builtin/test"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}