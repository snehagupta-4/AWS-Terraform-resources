resource "aws_glue_crawler" "crawler" {
  database_name = aws_glue_catalog_database.db.name
  name = "fruitcrawler"
  role = aws_iam_role.gluerole.arn

  s3_target {
    path = "s3://${aws_s3_bucket.bucket2.bucket}"
  }

  provisioner "local-exec" {
    command = "aws glue start-crawler --name ${aws_glue_crawler.crawler.name} --region ${var.region}"
  }
}