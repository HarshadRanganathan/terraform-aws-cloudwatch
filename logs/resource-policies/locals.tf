locals {
  log_group_arns = length(var.policy_resource_arns) ==0? [] :formatlist("arn:aws:logs:%s:%s:log-group:%s:*",var.region, data.aws_caller_identity.current.account_id, var.policy_resource_arns)
  encryption_arns = length(var.additional_policy_encryption_arns) ==0? [] : formatlist("arn:aws:kms:%s:%s:key/%s",var.region, data.aws_caller_identity.current.account_id, var.additional_policy_encryption_arns) 
  policy_resource_arns = concat(local.log_group_arns, local.encryption_arns,[])
}