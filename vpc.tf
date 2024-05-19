/*resource "aws_vpc" "main" {
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

resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "172.0.0.0/16"
  availability_zone = "us-east-1a"
}

resource "aws_security_group" "sg" {
  name = "sg1"
  description = "ssh allow port"
  vpc_id = aws_vpc.main.id
  ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
}*/