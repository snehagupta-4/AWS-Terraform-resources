resource "aws_glue_job" "jsontocsv" {
  name = "jsontocsv"
  role_arn = aws_iam_role.gluerole.arn

  command {
    script_location = "s3://${aws_s3_bucket.bucket.bucket}/awsgluescript.py"
    python_version = 3
  }

  /*provisioner "local-exec" {
    command = "aws glue start-job-run --job-name ${aws_glue_job.jsontocsv.name} --region ${var.region}"
  }*/
}
