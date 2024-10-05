
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "yat224ahmed-tftstate"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}
