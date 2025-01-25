terraform{
    required_providers{
        aws={
            source = "hashicorp/aws"
            version = "5.54.1"
        }
    }
}

# main.tf
provider "aws" {
  region = var.region
}

