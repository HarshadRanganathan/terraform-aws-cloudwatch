stage               = "prod"
target_arn          = "arn:aws:states:us-east-1::stateMachine:test-sf"
role_name           = "test-sf-role"
policy_name         = "test-sf-policy"
name                = "test-sf-event-trigger"
schedule_expression = "cron(30 09 * * ? *)" // Will run everyday at 3:00 pm IST
is_enabled          = true
