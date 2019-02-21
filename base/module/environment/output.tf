
output "wait_for_subnet_id_1" {
    value = "${aws_subnet.public.0.id}"
}

output "wait_for_subnet_id_2" {
    depends_on = ["output.wait_for_subnet_id_1"]
    value = "${aws_subnet.public.1.id}"
}

output "wait_for_security_group" {
    value = "${aws_security_group.mainSecurityGroup.id}"
}