# terraform-ec2-module

## Overview

This project provides a reusable Terraform module for provisioning AWS infrastructure, including EC2 instances, security groups, key pairs, and S3 buckets. The module is designed to support multiple environments (dev, stage, prod) and can be easily customized via input variables.

## Features

- Launches EC2 instances with custom AMI, instance type, and key pair
- Creates a security group with configurable ingress rules (SSH, HTTP, HTTPS)
- Provisions an S3 bucket for each environment
- Supports multiple environments (dev, stage, prod) using module instantiation
- Uses default VPC for networking

## Module Structure

The main reusable module is located in `my-infra-module/` and includes:

- `bucket.tf`: Provisions an S3 bucket
- `instance.tf`: Provisions EC2 instances
- `key-pair.tf`: Manages SSH key pairs
- `security-group.tf`: Creates a security group with ingress/egress rules
- `variable.tf`: Defines input variables for the module

## Usage

The root module (`main.tf`) demonstrates how to use the infrastructure module for different environments:

```hcl
module "dev" {
	source                  = "./my-infa-module"
	my_security_group_name  = "my-terra-infra-sg"
	SSH                    = 22
	HTTP                   = 80
	HTTPS                  = 443
	my_key_name            = "terra-key"
	ami_id                 = "ami-02d26659fd82cf299"
	instance_type          = "t2.micro"
	instance               = 1
	app_name               = "kanban-todo-app"
	my_env                 = "dev"
}

module "stage" {
	source                  = "./my-infa-module"
	my_security_group_name  = "my-terra-infra-sg"
	SSH                    = 22
	HTTP                   = 80
	HTTPS                  = 443
	my_key_name            = "terra-key"
	ami_id                 = "ami-02d26659fd82cf299"
	instance_type          = "t2.micro"
	instance               = 1
	app_name               = "kanban-todo-app"
	my_env                 = "stage"
}

module "prod" {
	source                  = "./my-infa-module"
	my_security_group_name  = "my-terra-infra-sg"
	SSH                    = 22
	HTTP                   = 80
	HTTPS                  = 443
	my_key_name            = "terra-key"
	ami_id                 = "ami-0861f4e788f5069dd"
	instance_type          = "t2.micro"
	instance               = 2
	app_name               = "kanban-todo-app"
	my_env                 = "prod"
}
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- AWS credentials configured (via environment variables or AWS CLI)
- The public key file for the key pair (e.g., `terra-key.pub`) must exist in the working directory

## Getting Started

1. Clone this repository
2. Change directory to `terraform-ec2-module`
3. Initialize Terraform:
	 ```powershell
	 terraform init
	 ```
4. Review and apply the plan:
	 ```powershell
	 terraform plan
	 terraform apply
	 ```

## Inputs

See `my-infra-module/variable.tf` for all available input variables.

## Outputs

You can extend the module to output instance IDs, public IPs, bucket names, etc., as needed.

## License

MIT