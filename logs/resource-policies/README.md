# Cloud watch logs resource policy

Provisions a cloudwatch logs resource policy to allow services to write to cloudwatch

For variables and their descriptions see the [variables.tf folder](./variables.tf)

The limit on the number of CWL resource policy is [10 per account](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/cloudwatch_limits_cwl.html) so configuration should be done on a per account basis

[Terraform docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_resource_policy)

## Usage

