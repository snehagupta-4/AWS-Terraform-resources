resource "aws_s3_bucket" "bucket" {
  bucket = "sourcebucket1905"

  tags = {
    name = var.tag
    environment = var.env
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "targetbucket1905"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.bucket.id
  key = "sourcejsonfile"
  source = "C:/Users/snehagup/Downloads/personal/sample1.json"
}