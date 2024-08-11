resource "aws_instance" "personal_ec2_instance" {
    instance_type = var.instances_type
    ami =var.ami_number
    security_groups = var.security_groupp
    subnet_id = var.subnet_ids

    tags={
        name="ec2_instance_created_using_terrform"
    }
  
}