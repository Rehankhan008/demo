terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "SimpleInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "instance_id" {
  value = aws_instance.example.id
}
