
resource "aws_security_group" "mainSecurityGroup" {
    name = "main security group"
    vpc_id = "${aws_vpc.vpc.id}"

    ingress{
        protocol = "tcp"
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
    }
    ## to allow us to ssh into the machines if required
    egress{
        protocol = -1
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}