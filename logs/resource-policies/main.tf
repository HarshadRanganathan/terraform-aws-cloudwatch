module "label_cloudwatch_log_policy" {
  source     = "git::https://github.com/HarshadRanganathan/terraform-aws-module-null-label.git//module?ref=3.0.0"

  namespace  = var.namespace
  name       = var.name
  stage      = var.stage
  delimiter  = var.delimiter
  attributes = compact(concat(var.attributes, list("log"), list("policy")))
  tags       = var.tags
  enabled    = var.enabled
}

resource "aws_cloudwatch_log_resource_policy" "default" {
  count       = var.enabled ? 1 : 0
  
  policy_name = module.label_cloudwatch_log_policy.id

  policy_document = data.aws_iam_policy_document.iam_policy.json
}