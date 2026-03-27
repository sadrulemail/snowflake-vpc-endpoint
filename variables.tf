variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where endpoint will be created"
  type        = string
}

variable "subnet_ids" {
  description = "Private subnet IDs for endpoint ENIs"
  type        = list(string)
}

variable "allowed_cidrs" {
  description = "CIDR blocks allowed to access VPC endpoint"
  type        = list(string)
}

variable "snowflake_service_name" {
  description = "Snowflake AWS PrivateLink service name"
  type        = string
}