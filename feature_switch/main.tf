provider "aws" {
    region = "ap-southeast-2"
}

variable "environment" {
    type = string
}

resource "aws_instance" "ec2" {
    ami = "ami-0ddbd63d0e3325a92"
    instance_type = "t3.micro"
    count = var.environment == "prod" ? 1 : 0
}