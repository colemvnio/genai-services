resource "aws_sns_topic" "sns_topic" {
  name = "sns-topic-${var.environment}"
  description = "SNS topic for ${var.environment}"
}
