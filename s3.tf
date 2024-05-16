resource "aws_s3_bucket" "bucket" {
  bucket = "Project-bucket-sne-0408"

  tags = {
    name = var.tag
    environment = var.env
  }
}