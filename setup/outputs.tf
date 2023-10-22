output "vpc_id" {
  value = aws_vpc.main.id
}

output "instance_tenancy" {
  value = aws_vpc.main.instance_tenancy
}