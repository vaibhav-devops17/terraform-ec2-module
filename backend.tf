

resource "aws_dynamodb_table" "my-state-file-table" {
    name = "my-terraform-lock-table-321"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}

