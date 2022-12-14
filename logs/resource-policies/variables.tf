
variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "enabled" {
  description = "If true, deploy the resources for the module"
  default     = true
}

variable "name" {
  default     = ""
  description = "Name  (e.g. `bastion` or `db`)"
}

variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = string
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = string
}
variable "kms_key_arn" {
  description = "The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested."
  default     = ""
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "policy_resource_arns" {
  default     = []
  type        = list
  description = "List of allowed resource arns."
}

variable "additional_policy_encryption_arns" {
  default     = []
  type        = list
  description = "List of allowed KMS key arns."
}

variable "policy_resource_actions" {
  default     = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:PutLogEventsBatch"]
  type        = list
  description = "List of allowed resource policy actions like 'logs:CreateLogStream','logs:PutLogEvents','logs:PutLogEventsBatch'"
}

variable "principals_identifiers" {
  default     = null
  type        = string
  description = "add Principal aws ex. es.amazonaws.com"
}