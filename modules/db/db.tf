resource "aws_instance" "myec2db" {
  ami           = "ami-0ddbd63d0e3325a92"
  instance_type = "t3.micro"

  tags = {
    Name = "DB Server"
  }
}
