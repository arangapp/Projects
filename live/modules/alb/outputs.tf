output "alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.internal.arn
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.internal.dns_name
}

output "alb_listener_arn" {
  description = "The ARN of the ALB listener"
  value       = aws_lb_listener.http.arn
}

output "alb_target_group_arn" {
  description = "The ARN of the target group associated with the ALB"
  value       = aws_lb_target_group.app.arn
}
