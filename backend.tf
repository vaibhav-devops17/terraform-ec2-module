variable "db_table_name" {
    default = "my-terraform-lock-table-321"
}

variable "s3_bucket_name" {
    default = "bucket-123-321-vaibhav"
}

resource "aws_dynamodb_table" "my-state-file-table" {
    name = var.db_table_name
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}

resource "aws_s3_bucket" "my-terraform-state-bucket" {
    bucket = var.s3_bucket_name
}

