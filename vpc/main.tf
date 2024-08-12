resource "aws_vpc" "personal_vpc" {
    cidr_block = var.cidr
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
      name="vpc_created_using_terraform"
    }
  
}

resource "aws_subnet" "personal_subnet"{
    vpc_id = aws_vpc.personal_vpc.id
    cidr_block=var.subnet_cidr_block
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      name="subnet_created_using_terraform"
    }  
}

resource "aws_security_group" "personal_security_group" {
    vpc_id = aws_vpc.personal_vpc.id
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.cidr_range]
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.cidr_range]
    }

    tags = {
        name="security_group_created_using_terraform"
    }
  
}