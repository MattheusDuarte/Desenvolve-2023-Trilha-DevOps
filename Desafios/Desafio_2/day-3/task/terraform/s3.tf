module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "bucket-MatheusDUarte-teste"
  acl    = "private"

  versioning = {
    enabled = true
  }

  tags = {
    Aluno = "MatheusDuarte"
    Gb    = "desenvolve"
  }
  depends_on = [ aws_instance.dev ]
}