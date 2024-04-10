module "api_gateway" {
  source ="../../modules/api_gateway"
  environment = var.environment
}

module "lambda" {
  source      = "../../modules/lambda"
  environment = var.environment
}

module "sns" {
  source      = "../../modules/sns"
  environment = var.environment
}

module "dynamodb" {
  source      = "../../modules/dynamodb"
    environment = var.environment
}
