resource "aws_flow_log" "flow_log" {
  log_destination = aws_vpc.main.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.main.id
}


resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    Name        = "${var.vpc_name}-vpc-main"
    Environment = "deployed-on-${var.environment}"
  }
}