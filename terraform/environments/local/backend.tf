terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "environment/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-terraform-lock-table"
  }
}
