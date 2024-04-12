resource "aws_api_gateway_rest_api" "api" {
  name        = "api-${var.environment}"
  description = "API Gateway for ${var.environment}"
  tags        = {
    Environment = var.environment
    Project     = "genAiService"
  }
}
