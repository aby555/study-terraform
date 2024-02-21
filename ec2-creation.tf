resource "aws_instance" "ec2-instance" {

  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  count = 1
    tags = {
    Name = "appserver"
  }
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAYUMQ5Q2SYYKIWLCQ"
  secret_key = "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"
}