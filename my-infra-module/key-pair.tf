resource "aws_key_pair" "my_keys" {
    key_name = var.my_key_name
    public_key = file("${var.my_key_name}.pub")
}