###################
#  VARIABLES      #
###################

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    type = "string"
    description = "VPC CIDR block"
}

variable "subnet_count" {
    default = 2
    type = "string"
    description = "the number of subnets to be created"
}

variable "instances" {
    default = 2
    type = "string"
    description = "the number of instances to be created"
}

variable "ami" {
    default = "ami-0fad7378adf284ce0"
    type = "string"
    description = "the ami (image) of the instance to be launched"
}

variable "key_name" {
	default = "key"
	type = "string"
	description = "Name of the key being used for the instances"
}

variable "instance_type" {
	default		= "t2.micro"
	type		= "string"
	description = "The type of EC2 instance the deployed instance will be "
}

variable "region" { 
	default 		= "eu-west-1"
	type			= "string"
	description 	= "The chosen region for the deployment"
}	
