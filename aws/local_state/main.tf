terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

