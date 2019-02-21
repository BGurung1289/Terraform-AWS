################
# VARIABLES    #
################
variable "vpc_cidr" {}

###############
# VPC CODE    #
###############

resource "aws_vpc" "vpc" {
    enable_dns_support = true
    enable_dns_hostnames = true

    cidr_block = "${var.vpc_cidr}"
}

