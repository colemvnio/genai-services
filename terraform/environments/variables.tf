variable "region" {
  description = "The region in which the resources will be deployed"
    type        = string
  validation {
    condition     = contains(["us-west-1", "us-west-2", "us-east-1", "us-east-2"], var.region)
    error_message = "The region must be 'us-west-1', 'us-west-2', 'us-east-1', or 'us-east-2'."
  }
}

variable "instance_type" {
  description = "The type of instance to deploy"
  type       = string
  validation {
    condition     = contains(["t2.micro", "t2.small", "t2.medium"], var.instance_type)
    error_message = "The instance type must be 't2.micro', 't2.small', or 't2.medium'."
  }
}

variable "environment" {
  description = "The environment in which the resources will be deployed"
  type        = string
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "The environment must be 'dev', 'staging', or 'prod'."
  }
}
