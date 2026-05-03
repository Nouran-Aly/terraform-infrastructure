terraform {
  backend "s3" {
    bucket = "iti-terraform-bucket" 
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
