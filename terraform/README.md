
# (WIP): Terraform Configuration for GenAI Services 🌍

This directory contains the Terraform configuration files for setting up the infrastructure required by **GenAI Services**. It leverages AWS services, including API Gateway, Lambda Functions, SNS/EventBridge, and DynamoDB(*), alongside integration with AWS Bedrock for generative AI capabilities and Sentry for error logging.

## Table of Contents 📚
- [Environments](#environments-)
- [Structure](#structure-)
- [Getting Started](#getting-started-)
  - [Prerequisites](#prerequisites)
  - [Deployment Steps](#deployment-steps)
  - [Cleanup](#cleanup)
- [Deploying locally with LocalStack and TFLocal](#deploying-locally-with-tflocal-)
- [Modules](#modules-)
- [Author](#-author)

## Environments 🌳

- `local`: Work in progress
- `dev`: Work in progress
- `staging`: Not implemented
- `prod`: Not implemented


## Structure 🏗️

- `/modules`: Contains reusable Terraform modules for each major component of our infrastructure.
- `/environments`: Environment-specific configurations (e.g., `dev`, `staging`, `prod`) that use the modules defined in `/modules`.

## Getting Started 🚀

### Prerequisites

- Terraform
- [LocalStack](https://localstack.cloud/) (for local development
- [TFLocal](https://docs.localstack.cloud/academy/localstack-deployment/infra-terraform/)
- AWS CLI, configured with appropriate access rights
- Sentry account (for error logging setup outside Terraform)

### Deployment Steps

1. **Choose an Environment**:

Navigate to the environment you wish to deploy:

```bash
$ cd ~/terraform/environments/dev
```

2. **Initialize Terraform**:

Initialize the Terraform environment. This step will download the necessary Terraform providers.

```bash
$ terraform init
```

3. **Review the Plan**:

Generate and review an execution plan to see what Terraform will do:

```bash
$ terraform plan -var-file="terraform/environments/dev.tfvars"
```

4. **Apply the Configuration**:

Apply the configuration to create or update the infrastructure:

```bash
$ terraform apply -var-file="terraform/environments/dev.tfvars"
```

Confirm the action when prompted.

### Cleanup

To destroy the Terraform-managed infrastructure (use with caution):

```bash
$ terraform destroy -var-file="terraform/environments/dev.tfvars"
```

## Deploying locally with TFLocal 🤖

To deploy the infrastructure locally using TFLocal, follow these steps:
1. Install TFLocal: `pip install terraform-local`
2. Start LocalStack: `localstack start`
   1. Docker is required
3. Navigate to your environment directory: `cd ~/terraform/environments/local`
4. Initialize Terraform: `tflocal init`
5. Apply the configuration: `tflocal apply -var-file="../../../terraform/environments/local.tfvars"`
6. Confirm the action when prompted

## Modules 📦

Each module in the `/modules` directory is designed to be reusable and encapsulates a specific piece of AWS infrastructure.
- `api_gateway`: API Gateway configuration
- `lambda`: Lambda Function configuration for the webhook receiver
- `sns`: SNS configuration
- `dynamodb`: DynamoDB configuration

## 📜 Author

- [Patrick Coleman](https://www.linkedin.com/in/patrickc-developer/)
