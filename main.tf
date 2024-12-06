provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-dso-project" {
  bucket = "terraform-dso-project"
}
resource "aws_s3_bucket" "terraform-dso-project1" {
  bucket = "terraform-dso-project1"
}
terraform {
  backend "s3" {
    bucket         = "terraform-dso-project"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}

