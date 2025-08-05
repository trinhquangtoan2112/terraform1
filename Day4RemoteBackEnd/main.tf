provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "toan2002" {
  instance_type = "t2.micro"
  ami           = "ami-015927f8ee1bc0293"

}

resource "aws_s3_bucket" "s3bucket" {
  bucket = "toan2002-terraform-backend-bucket"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform_lock_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
