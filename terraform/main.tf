terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.28.0"
    }
  }
  required_version = ">=1.6.4"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "blog-app" {
  name                 = "blog-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
