provider "aws" {
  region = var.region
}

resource "aws_eks_fargate_profile" "my_fargate_profile" {
  cluster_name = var.cluster_name
  name         = var.fargate_profile_name
  subnet_ids   = var.subnet_ids
  selector {
    namespace = var.namespace
  }
}
