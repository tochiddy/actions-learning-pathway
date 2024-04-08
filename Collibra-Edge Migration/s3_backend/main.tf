provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = var.bucket_name
    key            = var.state_file_key
    region         = var.region
  }
}
