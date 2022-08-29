data "aws_caller_identity" "current" {}

###########################
# Cloud Watch Logs Policy #
###########################
data "aws_iam_policy_document" "iam_policy" {
  statement {

    sid = "AllowLogs"

    actions = var.policy_resource_actions

    resources = local.policy_resource_arns

    principals {
      identifiers = [var.principals_identifiers]
      type        = "Service"
    }
  }
}
