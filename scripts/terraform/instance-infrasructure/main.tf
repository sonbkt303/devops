terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.instance_type
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = var.instance_name
  }
}
