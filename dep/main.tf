provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0ddbd63d0e3325a92"
  instance_type = "t3.micro"

  tags = {
    Name = "Web Server"
  }
  depends_on = [aws_instance.myec2db]
}

resource "aws_instance" "myec2db" {
  ami           = "ami-0ddbd63d0e3325a92"
  instance_type = "t3.micro"

  tags = {
    Name = "DB Server"
  }
}

output "dbservers" {
  value = aws_instance.myec2db.availability_zone
}