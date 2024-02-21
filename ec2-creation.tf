resource "aws_instance" "ec2-instance" {

  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  count = 2
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
  access_key = "AKIAQ6DNTPZ4V2WB3K35"
  secret_key = "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"
}