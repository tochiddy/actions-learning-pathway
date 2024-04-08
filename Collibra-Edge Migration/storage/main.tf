provider "aws" {
  region = var.region
}

resource "aws_efs_file_system" "edge_application_storage" {
  creation_token = var.creation_token
  encrypted      = true
  performance_mode = "generalPurpose"
  throughput_mode = "bursting"
}
