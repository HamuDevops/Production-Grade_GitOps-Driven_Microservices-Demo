terraform {
  backend "s3" {
    bucket         = "s3-tf-backup-2026"
    key            = "s3-backend"
    region         = "us-east-1"
    
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.52.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

