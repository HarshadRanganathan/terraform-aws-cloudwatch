stage                  = "prod"
principals_identifiers = "delivery.logs.amazonaws.com"
policy_resource_arns = ["*apigateway*:log-stream", "*api-gateway*:log-stream"]
policy_resource_actions = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:PutLogEvents", "logs:GetLogEvents",  "logs:FilterLogEvents"]
name = "api-gateway"
