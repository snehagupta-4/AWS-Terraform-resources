resource "aws_glue_job" "jsontocsv" {
  name = "jsontocsv"
  role_arn = aws_iam_role.gluerole.arn

  command {
    script_location = "s3://${aws_s3_bucket.bucket.bucket}/awsgluescript.py"
  }
}