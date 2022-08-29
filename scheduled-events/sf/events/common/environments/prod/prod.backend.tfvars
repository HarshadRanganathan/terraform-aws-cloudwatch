bucket         = "aws-prod-terraform-state"
key            = "prod/cloudwatch/events/scheduled-event/terraform.tfstate"
region         = "us-east-1"
encrypt        =  true
dynamodb_table = "aws-prod-terraform-state-lock"