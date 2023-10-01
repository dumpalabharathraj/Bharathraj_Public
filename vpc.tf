resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_name
	Owner = "Dumpala Bharathraj"
	#environment = "Prod"
    }
}

resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = aws_vpc.my_vpc.id
	tags = {
        Name = var.igw_name
    }
}