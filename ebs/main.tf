terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.63.0"
    }
  }
}

provider "aws" {

  region     = "us-west-2"
}

resource "aws_ebs_volume" "demo" {
  availability_zone = "us-west-2a"
  size              = 40
  tags = {
    Name = "HelloWorld"
  }
}
/*
resource "aws_ebs_default_kms_key" "demokey" {
  key_arn = aws_kms_key.example.arn
}
*/