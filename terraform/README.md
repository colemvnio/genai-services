
# (WIP): Terraform Configuration for GenAI Services 🌍

This directory contains the Terraform configuration files for setting up the infrastructure required by **GenAI Services**. It leverages AWS services, including API Gateway, Lambda Functions, SNS/EventBridge, and DynamoDB(*), alongside integration with AWS Bedrock for generative AI capabilities and Sentry for error logging.

## Environments 🌳

- `dev`: Work in progress
- `staging`: Not implemented
- `prod`: Not implemented


## Structure 🏗️

- `/modules`: Contains reusable Terraform modules for each major component of our infrastructure.
- `/environments`: Environment-specific configurations (e.g., `dev`, `staging`, `prod`) that use the modules defined in `/modules`.

## Getting Started 🚀

### Prerequisites

- Terraform
- AWS CLI, configured with appropriate access rights
- Sentry account (for error logging setup outside Terraform)

### Deployment Steps

1. **Choose an Environment**:

Navigate to the environment you wish to deploy:

```bash
cd ~/terraform/environments/dev
```

2. **Initialize Terraform**:

Initialize the Terraform environment. This step will download the necessary Terraform providers.

```bash
terraform init
```

3. **Review the Plan**:

Generate and review an execution plan to see what Terraform will do:

```bash
terraform plan -var-file="../../dev.tfvars"
```

4. **Apply the Configuration**:

Apply the configuration to create or update the infrastructure:

```bash
terraform apply -var-file="../../dev.tfvars"
```

Confirm the action when prompted.

### Cleanup

To destroy the Terraform-managed infrastructure (use with caution):

```bash
terraform destroy -var-file="../../dev.tfvars"
```

## Modules 📦

Each module in the `/modules` directory is designed to be reusable and encapsulates a specific piece of AWS infrastructure.
- `api_gateway`: API Gateway configuration
- `lambda`: Lambda Function configuration for the webhook receiver
- `sns`: SNS configuration
- `dynamodb`: DynamoDB configuration

## 📜 Author

- [Patrick Coleman](https://www.linkedin.com/in/patrickc-developer/)
