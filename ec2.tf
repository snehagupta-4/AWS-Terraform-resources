resource "aws_instance" "newec2" {
  ami = "ami-051f8a213df8bc089"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet.id
}
resource "aws_ec2_instance_state" "test" {
  instance_id = aws_instance.newec2.id
  state       = "running"
}