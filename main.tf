# Configure aws prodiver
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# Stores the terraform State file in s3
terraform {
  backend "s3" {
    bucket = "paul-terraform-remotestate"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}