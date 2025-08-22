resource "aws_s3_bucket" "my_app_bucket" {
    bucket = "test-${var.app_name}-${var.my_env}"

}