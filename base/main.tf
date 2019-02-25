

provider "aws" {
    region = "${var.region}"
}


module "environment" {
    source = "./module/environment"

    vpc_cidr = "${var.vpc_cidr}"
    subnet_count = "${var.subnet_count}"
}

module "bastion" {
    source = "./module/bastion"
    wait_for_vpc = "${module.environment.wait_for_vpc_id}"
    ami = "${var.ami}"
    key_name = "${var.key_name}"
    instance_type = "${var.instance_type}"
    wait_for_subnet = "${module.environment.wait_for_subnet_id_1}"
}

module "efs" {
    source = "./module/efs"
    wait_for_subnet = "${module.environment.wait_for_subnet_id_1}"
    wait_for_subnet2 = "${module.environment.wait_for_subnet_id_2}"
    wait_for_vpc = "${module.environment.wait_for_vpc_id}"
    vpc_subnet_cidr = "${var.vpc_cidr}"
}