output "policy_label_id" {
  value       = aws_cloudwatch_log_resource_policy.default[0].id
  description = "ID of the resource"
}