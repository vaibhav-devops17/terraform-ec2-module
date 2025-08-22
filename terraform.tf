terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.9.0"
        }
    }
    backend "s3" {
        bucket = "bucket-123-321-vaibhav"
        key    = "terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "my-terraform-lock-table-321"
    }
}