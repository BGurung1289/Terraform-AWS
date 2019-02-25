################
# VARIABLES    #
################
variable "subnet_count" {}

###############
# SUBNET CODE #
###############

resource "aws_subnet" "public" {
    count = "${var.subnet_count}"

    availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
    cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index)}"
    vpc_id = "${aws_vpc.vpc.id}"

}



###########################################
###########################################


// resource "aws_subnet" "private" {
//     count = "${var.subnet_count}"

//     availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
//     cidr_block = "${cidrsubnet(var.vpc_cidr, 8, count.index)}"
//     vpc_id = "${aws_vpc.vpc.id}"
// }

#### Private subnets can be added although they will require NAT gateways to be accessed.
#### NAT gateways will also require NAT IPs. 