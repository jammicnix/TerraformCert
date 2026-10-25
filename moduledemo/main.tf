provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0ddbd63d0e3325a92"
  instance_type = "t3.micro"

  tags = {
    Name = "Web Server"
  }
}

module "dbserver" {
  source = "./db/mysql"
  dbname = "mydbserver"
}

output "dbprivateip" {
  value = module.dbserver.privateip
}

