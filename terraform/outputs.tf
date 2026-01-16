output "alb_dns" {
  value = module.load_balancer.alb_dns
}

output "db_address" {
  value = module.database.db_address
}