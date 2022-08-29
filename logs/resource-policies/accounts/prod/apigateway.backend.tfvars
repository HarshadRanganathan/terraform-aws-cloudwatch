bucket         = "aws-prod-terraform-state"
key            = "prod/cloudwatch/logs/resource-policy/apigateway/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "aws-prod-terraform-state-lock"