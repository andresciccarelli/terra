provider "aws" {
    region = "us-east-2"
    access_key = "AKIAXQAYDY3YOX243M4B"
    secret_key = "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"
}

resource "aws_vpc" "vpc_prueba" {
  cidr_block = "10.1.0.0/16"
  tags = {
    "Name" = "VPC-conterraform"
  }
}

resource "aws_subnet" "subnet_prueba" {
  vpc_id = aws_vpc.vpc_prueba.id
  cidr_block = "10.1.0.0/24"
  availability_zone = "us-east-2a"
}

output "vpc-id" {
  value = aws_vpc.vpc_prueba.id
  
}