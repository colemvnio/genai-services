provider "aws" {
  region                      = "us-east-1"
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  allowed_account_ids = ["000000000000"]
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true

  endpoints {
    s3     = "http://localhost:4566"
    lambda = "http://localhost:4566"
    sns    = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
  }
}
