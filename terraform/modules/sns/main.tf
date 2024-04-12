resource "aws_sns_topic" "sns_topic" {
  name = "sns-topic-${var.environment}"
  kms_master_key_id = "alias/aws/sns"
  tags        = {
    Environment = var.environment
    Project     = "genAiService"
  }
}
