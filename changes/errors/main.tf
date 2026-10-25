provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-0ddbd63d0e3325a92"
    instance_type = var.type
}