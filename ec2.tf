resource "aws_instance" "newec2" {
  ami = "ami-051f8a213df8bc089"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet.id
  key_name = aws_key_pair.key.key_name
  associate_public_ip_address = true

  tags = {
    name = "ec2_instance"
  }
}
resource "aws_ec2_instance_state" "test" {
  instance_id = aws_instance.newec2.id
  state       = "running"
}

resource "aws_key_pair" "key" {
  key_name = "id_rsa"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDC8WJthwjHfqdpyGOQsORZ8XVlQEUMqVuUDLW90nhESWONsnuIPMfTFa5FkTpkXVxmkgreu01RZCFEMLDuZkdn0cmBveUF28k7g0XubPP5lAUTlreNLrVj9YhTSp3x94YH6SSG4HXMRNb1276p+dpgJyNrARma/O+4s3bXslT2t5JOLEGMuP/QoSositvLioU5K9SYIu2ItZ6QRNwiZF1r9DjJsaAqfHZ+3rg/OiiHtMApx8aimjp3lKer5OYU+nI1yRMLcXns+0T8j9M756vSZISlPmDM9qdWdOzhJ6weMoijS8UDPNQh8zzWPaE5hxaJpcab92cBKkgUusLZlEQrjWPp8XW5/3dyg0nWpFfIGJrS3a31BSn1FvmpuHiBxHpEHckXkV9WY52e2HwT6sU9L59gtGL6/dtqgUnajFjmmT/GuYWd/pNq1DsMKtcHOGy6wcgQfkwv3LTkspLVjkN4/su2dB/FHn1PN768F8ErHYx5Ha0rHjRj3jG9JjSv4tc= snehagup@INLEN8520041074"
}