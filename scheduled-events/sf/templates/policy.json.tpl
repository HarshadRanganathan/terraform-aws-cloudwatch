{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowStepFunction",
      "Action": [
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "${target_arn}"
      ]
    }
  ]
}