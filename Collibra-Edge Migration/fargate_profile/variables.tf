variable "region" {
  description = "AWS region"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "fargate_profile_name" {
  description = "Name of the Fargate profile"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "namespace" {
  description = "Namespace for Fargate profile"
}
