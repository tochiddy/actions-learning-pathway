variable "region" {
  description = "AWS region"
}

variable "bucket_name" {
  description = "Name of the S3 bucket for storing Terraform state file"
}

variable "state_file_key" {
  description = "Key for the Terraform state file in S3 bucket"
}
