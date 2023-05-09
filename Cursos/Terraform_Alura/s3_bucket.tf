resource "aws_s3_bucket" "bucket_exemplo" {
  bucket = "${var.name}-bucket"
  acl    = "private"
  tags = {
    Name = "${var.name}-bucket"
  }
}