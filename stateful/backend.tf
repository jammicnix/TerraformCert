terraform {
  backend "s3" {
    bucket = "terraform-cert-s3-backend-sydau"
    key    = "state/terraform.tfstate"
    region = "ap-southeast-2"
  }
}
