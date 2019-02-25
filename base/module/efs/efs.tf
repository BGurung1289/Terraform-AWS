variable "wait_for_subnet" {}
variable "wait_for_subnet2" {} 

resource "aws_efs_file_system" "examplefilesys"{
    ## creates an EFS resource
}

resource "aws_efs_mount_target" "by_id"{
    ## links the efs created above to the subnets in the correct location
	file_system_id  = "${aws_efs_file_system.examplefilesys.id}"
	security_groups = ["${aws_security_group.efs-sg.id}"]
	subnet_id = "${var.wait_for_subnet}"
}

resource "aws_efs_mount_target" "by_id2"{
    ## links the efs created above to the subnets in the correct location
	file_system_id  = "${aws_efs_file_system.examplefilesys.id}"
	security_groups = ["${aws_security_group.efs-sg.id}"]
	subnet_id = "${var.wait_for_subnet2}"
}
