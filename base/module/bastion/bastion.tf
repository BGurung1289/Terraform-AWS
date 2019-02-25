variable "ami" {}
variable "key_name" {}
variable "instance_type" {}
variable "wait_for_subnet" {}

resource "aws_instance" "bastion" {
    ami = "${var.ami}"
    key_name = "${var.key_name}"
    instance_type = "${var.instance_type}"
    subnet_id = "${var.wait_for_subnet}"
    security_groups = ["${aws_security_group.bastionSecurityGroup.id}"]
    associate_public_ip_address = true
}