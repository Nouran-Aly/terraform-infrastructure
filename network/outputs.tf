output "subnets" {
 value = aws_subnet.subnets 
}

output "vpc_cidr" {
  value = aws_vpc.main_vpc.cidr_block
}

output "vpc_id" {
  value = aws_vpc.main_vpc.id
}