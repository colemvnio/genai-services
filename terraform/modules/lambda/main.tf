resource "aws_lambda_function" "webhook_receiver" {
  function_name    = "webhook-receiver"
  description    = "Lambda for ${var.environment}"
  role             = aws_iam_role.lambda_role.arn
  handler          = "index.handler"
  runtime          = "nodejs20.x"
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda-role"

  assume_role_policy = <<-EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "lambda.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
}
