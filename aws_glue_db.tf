resource "aws_glue_catalog_database" "db" {
  name = "fruitdb"
}

resource "aws_glue_catalog_table" "table" {
  name = "fruittable"
  database_name = aws_glue_catalog_database.db.name
}

