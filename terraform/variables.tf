variable "region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "myapp"
}

variable "db_user" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "frontend_image" {
  description = "ECR URI of Angular frontend"
}

variable "backend_image" {
  description = "ECR URI of Spring backend"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "image_tag" {
  description = "Docker image tag to use for deployments"
  default     = "latest"
}

variable "backend_bucket" {
  description = "S3 bucket for Terraform state"
}

variable "backend_key" {
  description = "Key for Terraform state file"
  default     = "terraform.tfstate"
}

variable "backend_dynamodb_table" {
  description = "DynamoDB table for state locking"
}
