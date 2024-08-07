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
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.instance_type
  instance_type = "t2.micro"
  key_name      = var.key_name


  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/aws2024.pem")
    host        = self.public_ip

  }

  provisioner "file" {
    source      = "~/.bash_aliases"
    destination = "/home/ubuntu/.bash_aliases"
  }

  provisioner "local-exec" {
    command    = "echo ${self.public_ip}>> public_ip.txt"
    on_failure = continue
  }

  provisioner "remote-exec" {
    inline = [
      "echo Hello world",
      "sleep 5",
      # ". .bash_aliases",
    ]
    on_failure = continue
  }

  tags = {
    Name = var.instance_name
  }
}
