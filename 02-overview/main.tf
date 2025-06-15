terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-021d9f8e43481e7da" # Ubuntu 20.04 LTS // eu-west-1
  instance_type = "t2.micro"
}
