variable "aws_region"{
	default = "eu-west-1"
}

variable "vpc_cidr" {
	default = "192.168.0.0/20"
}

variable "subnet_cidr_private"{
	type = "list"
	default = ["192.168.0.0/23", "192.168.2.0/23", "192.168.4.0/23"]
}

variable "subnet_cidr_public"{
	type = "list"
	default = ["192.168.6.0/23", "192.168.8.0/23", "192.168.10.0/23"]
}

variable "azs" {
	type = "list"
	default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

