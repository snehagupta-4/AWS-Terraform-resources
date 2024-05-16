resource "aws_s3_bucket" "bucket" {
  bucket = "project-bucket-sne-0408"

  tags = {
    name = var.tag
    environment = var.env
  }
}