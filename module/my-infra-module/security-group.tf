resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
    name = var.my_security_group_name
    vpc_id = aws_default_vpc.default.id
    
    ingress {
        from_port = var.SSH
        to_port = var.SSH
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    
    ingress {
        from_port = var.HTTP
        to_port = var.HTTP
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    
    ingress {
        from_port = var.HTTPS
        to_port = var.HTTPS
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}