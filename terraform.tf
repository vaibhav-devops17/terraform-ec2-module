terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.9.0"
        }
    }

    backend "s3" {
        bucket = "my-terraform-state-bucket-321"
        key = "terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = var.db_table_name
    }
}