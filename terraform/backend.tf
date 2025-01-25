terraform {
  backend "s3" {
    bucket = "sundeep43-cloud-terraform43"
    key = "terraform/cloud_lambda/gitactions/terraform.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}