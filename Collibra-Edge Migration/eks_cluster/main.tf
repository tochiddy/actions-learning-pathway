provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "my_cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  version = var.cluster_version

  node_group {
    node_group_name = "my-node-group"
    instance_type   = "m5.xlarge"
    desired_capacity = 2
    min_size        = 2
    max_size        = 2

    labels = {
      "role" = "worker"
    }

    tags = {
      "Environment" = "Production"
    }
  }
}