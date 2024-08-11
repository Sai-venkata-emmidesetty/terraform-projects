module "vpc" {
    source = "./vpc"
    cidr ="10.0.0.0/32"
    cidr_range = ["0.0.0.0/0"]

  
}

module "web" {
    source = "./web"
    ami_number = "ami-0a0e5d9c7acc336f1"
    instances_type = "t2.micro"
    security_groupp = module.vpc.security_group
    subnet_ids = module.vpc.subnet
}