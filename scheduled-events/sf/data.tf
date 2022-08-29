data "template_file" "policy_json" {
  template = file("${path.module}/templates/policy.json.tpl")

  vars = {
    target_arn = var.target_arn
  }
}


