module "cloudwatch_event" {

  source = "git::https://github.com/HarshadRanganathan/terraform-aws-module-cloudwatch.git//module/event/event-iam?ref=3.0.0"

  is_enabled = var.is_enabled

  namespace = var.namespace
  stage     = var.stage
  name      = var.name

  schedule_expression = var.schedule_expression
  description         = local.description
  target_enabled      = var.target_enabled
  target_role_arn     = module.cloudwatch_event.iam_role_arn
  rule_tags           = local.tags


  # Target arn

  target_arn = var.target_arn

  # role
  create_role      = var.create_role
  role_name        = var.role_name
  role_policy_arns = [module.cloudwatch_event.iam_policy_arn]
  trusted_role     = var.trusted_role

  role_tags = local.tags


  # policy
  policy_name = var.policy_name
  policy      = data.template_file.policy_json.rendered
}
