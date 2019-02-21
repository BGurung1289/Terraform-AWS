###############
# ROUTE CODE  #
###############

resource "aws_internet_gateway" "ingateway" {
    vpc_id = "${aws_vpc.vpc.id}"
}

resource "aws_route_table" "mainRoute" {
    vpc_id = "${aws_vpc.vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.ingateway.id}"
    }
}

resource "aws_route_table_association" "main-association" {
	count = "${var.subnet_count}"
	subnet_id			= "${aws_subnet.public.*.id[count.index]}"
	route_table_id      = "${aws_route_table.mainRoute.id}"
}