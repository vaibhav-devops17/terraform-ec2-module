variable "db_table_name" {
    default = "my-terraform-lock-table-321"
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

