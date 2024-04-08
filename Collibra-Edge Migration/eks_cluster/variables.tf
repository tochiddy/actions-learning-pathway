variable "region" {
  description = "AWS region"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "cluster_version" {
  description = "Version of EKS cluster"
}
