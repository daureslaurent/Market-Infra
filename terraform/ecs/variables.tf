variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "frontend_image" {
  description = "ECR URI of Angular frontend"
  type        = string
}

variable "backend_image" {
  description = "ECR URI of Spring backend"
  type        = string
}

variable "image_tag" {
  description = "Docker image tag to use for deployments"
  type        = string
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

variable "frontend_target_group_arn" {
  description = "ARN of the frontend target group"
  type        = string
}

variable "backend_target_group_arn" {
  description = "ARN of the backend target group"
  type        = string
}

variable "frontend_listener_rule_arn" {
  description = "ARN of the frontend listener rule"
  type        = string
}

variable "backend_listener_rule_arn" {
  description = "ARN of the backend listener rule"
  type        = string
}

variable "db_address" {
  description = "Database address"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "ecs_security_group_id" {
  description = "ECS security group ID"
  type        = string
}