#############
# VARIABLES #
#############
variable "instances" {}
variable "ami" {}
variable "key_name" {}
variable "instance_type" {}
variable "wait_for_subnet" {}
variable "wait_for_subnet2" {}
variable "wait_for_security" {}


############
# EC2 CODE #
############

resource "aws_instance" "main" {
    ami = "${var.ami}"
    key_name = "${var.key_name}"
    instance_type = "${var.instance_type}"
    subnet_id = "${var.wait_for_subnet}"
    security_groups = ["${var.wait_for_security}"]
    associate_public_ip_address = true
}

resource "aws_instance" "secondMain" {
    ami = "${var.ami}"
    key_name = "${var.key_name}"
    instance_type = "${var.instance_type}"
    subnet_id = "${var.wait_for_subnet2}"
    security_groups = ["${var.wait_for_security}"]
    associate_public_ip_address = true
}