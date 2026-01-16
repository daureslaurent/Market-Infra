# Main Terraform configuration file
# Resources have been organized into modules for better maintainability

module "networking" {
  source = "./networking"

  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
}

module "database" {
  source = "./database"

  project_name          = var.project_name
  db_user               = var.db_user
  db_password           = var.db_password
  private_subnet_ids    = module.networking.private_subnet_ids
  ecs_security_group_id = module.networking.ecs_security_group_id
}

module "load_balancer" {
  source = "./load_balancer"

  project_name          = var.project_name
  vpc_id                = module.networking.vpc_id
  public_subnet_ids     = module.networking.public_subnet_ids
  alb_security_group_id = module.networking.alb_security_group_id
}

module "ecs" {
  source = "./ecs"

  project_name              = var.project_name
  frontend_image            = var.frontend_image
  backend_image             = var.backend_image
  image_tag                 = var.image_tag
  db_user                   = var.db_user
  db_password               = var.db_password
  frontend_target_group_arn = module.load_balancer.frontend_target_group_arn
  backend_target_group_arn  = module.load_balancer.backend_target_group_arn
  frontend_listener_rule_arn = module.load_balancer.frontend_listener_rule_arn
  backend_listener_rule_arn = module.load_balancer.backend_listener_rule_arn
  db_address                = module.database.db_address
  public_subnet_ids         = module.networking.public_subnet_ids
  private_subnet_ids        = module.networking.private_subnet_ids
  ecs_security_group_id     = module.networking.ecs_security_group_id
}
