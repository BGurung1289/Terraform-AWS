variable "wait_for_vpc" {}
variable "vpc_subnet_cidr" {}

resource "aws_security_group" "efs-sg" {
    name = "Internal Only"
    description = "efs security group"
    vpc_id = "${var.wait_for_vpc}"

	ingress{
		from_port = 0
		to_port   = 0
		protocol  = "-1"
		cidr_blocks = ["${var.vpc_subnet_cidr}"]
	}
}

resource "aws_security_group" "efs-wide" {
    name = "Wide Open"
    description = "efs security group"
    vpc_id = "${var.wait_for_vpc}"

	ingress{
		from_port = 0
		to_port   = 0
		protocol  = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

  egress{
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}