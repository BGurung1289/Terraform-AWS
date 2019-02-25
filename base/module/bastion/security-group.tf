variable "wait_for_vpc" {}


resource "aws_security_group" "bastionSecurityGroup" {
    name = "main security group"
    vpc_id = "${var.wait_for_vpc}"

    ingress{
        protocol = "tcp"
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    ## to allow us to ssh into the machines which is required as bastions
    ## are used to access an instance in the private subnet

    egress{
        protocol = -1
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}