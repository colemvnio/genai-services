output "api_gateway_id" {
  description = "The ID of the API Gateway"
  value = aws_api_gateway_rest_api.api.id
}
