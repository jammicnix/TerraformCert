provider "aws" {
  region = "ap-southeast-2"
}
provider "aws" {
  region = "ap-southeast-6"
  alias  = "new zealand"
}

resource "aws_vpc" "sydvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "nzvpc" {
  cidr_block = "10.0.0.0/16"
  provider   = aws.newzealand
}
