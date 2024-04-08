provider "aws" {
  region = "us-west-2"  # Update with your desired region
}

module "s3_backend" {
  source            = "./s3_backend"
  region            = "us-west-2"
  bucket_name       = "my-terraform-state-bucket"
  state_file_key    = "terraform.tfstate"
}

module "eks_cluster" {
  source = "./eks_cluster"

  region               = "us-west-2"
  cluster_name         = "my-eks-cluster"
  cluster_role_arn     = "arn:aws:iam::123456789012:role/my-eks-cluster-role"
  subnet_ids           = ["subnet-123456", "subnet-654321"]
  security_group_ids   = ["sg-123456"]
  cluster_version      = "1.20"
}

module "fargate_profile" {
  source = "./fargate_profile"

  region               = "us-west-2"
  cluster_name         = module.eks_cluster.cluster_name
  fargate_profile_name = "my-fargate-profile"
  subnet_ids           = ["subnet-123456", "subnet-654321"]
  namespace            = "default"
}

module "storage" {
  source          = "./storage"

  region          = "us-west-2"
  creation_token  = "edge-application-storage"
}
