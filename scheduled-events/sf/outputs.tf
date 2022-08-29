# Test All Module Outputs
## cloudwatch_event
output "cloudwatch_event_arn" {
  description = "The Amazon Resource Name (ARN) of the rule."
  value       = module.cloudwatch_event.arn
}

output "cloudwatch_event_id" {
  description = "The name of the rule."
  value       = module.cloudwatch_event.id
}

output "cloudwatch_event_name" {
  description = "The rule's name."
  value       = module.cloudwatch_event.name
}

output "cloudwatch_event_schedule_expression" {
  description = "The scheduling expression."
  value       = module.cloudwatch_event.schedule_expression
}

output "cloudwatch_event_event_pattern" {
  description = "Event pattern described a JSON object."
  value       = module.cloudwatch_event.event_pattern
}

output "cloudwatch_event_description" {
  description = "The description of the rule."
  value       = module.cloudwatch_event.description
}

output "cloudwatch_event_role_arn" {
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
  value       = module.cloudwatch_event.role_arn
}

output "cloudwatch_event_is_enabled" {
  description = "Whether the rule should be enabled."
  value       = module.cloudwatch_event.is_enabled
}

output "cloudwatch_event_tags" {
  description = "A mapping of tags to assign to the resource."
  value       = module.cloudwatch_event.tags
}
