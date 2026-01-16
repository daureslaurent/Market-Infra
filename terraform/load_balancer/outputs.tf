output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "frontend_target_group_arn" {
  value = aws_lb_target_group.frontend.arn
}

output "backend_target_group_arn" {
  value = aws_lb_target_group.backend.arn
}

output "frontend_listener_rule_arn" {
  value = aws_lb_listener_rule.frontend.arn
}

output "backend_listener_rule_arn" {
  value = aws_lb_listener_rule.backend.arn
}