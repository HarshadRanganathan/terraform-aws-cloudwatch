locals {
  description = "Managed By Terraform"
  tags = {
    Name      = var.name
    ManagedBy = "Terraform"
    Team      = "aws"
    Stage     = var.stage
    Terraform = "true"
  }
}