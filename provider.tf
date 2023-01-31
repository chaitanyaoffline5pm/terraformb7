terraform {
  backend "s3" {
    bucket = "cgit-state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}