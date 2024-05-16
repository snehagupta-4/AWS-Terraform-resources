resource "aws_vpc" "main" {
  cidr_block = "172.0.0.0/16"

  tags = {
    name = var.tag
    environment = var.env
  }
}

resource "aws_vpc_endpoint" "s3" {
    vpc_id = aws_vpc.main.id
    service_name = "com.amazonaws.${var.region}.s3"
}