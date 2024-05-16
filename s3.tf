resource "aws_s3_bucket" "bucket" {
  bucket = "Project-bucket-sne"

  tags = {
    name = var.tag
    environment = var.env
  }
}