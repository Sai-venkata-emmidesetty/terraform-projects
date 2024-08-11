output "subnet" {
    value = aws_subnet.personal_subnet
  
}

output "security_group" {
    value=aws_security_group.personal_security_group  
}