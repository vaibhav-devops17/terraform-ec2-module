resource "aws_instance" "my_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    count = var.instance
    vpc_security_group_ids = [ aws_security_group.my_security_group.name ]

    tags = {
        Name = "${var.app_name}-${var.my_env}"
    }
}