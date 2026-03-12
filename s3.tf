resource "aws_s3_bucket" "terraform_bucket" {

  bucket = "tf-demo-bucket-123456789"   # must be globally unique

  tags = {
    Name        = "Terraform S3 Bucket"
    Environment = "Dev"
  }

}