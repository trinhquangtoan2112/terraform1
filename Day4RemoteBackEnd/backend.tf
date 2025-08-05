# terraform {
#   backend "s3" {
#     region = "ap-southeast-1"
#     bucket = "toan2002-terraform-backend-bucket"
#     key = "test/terraform.tfstate"
#     dynamodb_table = "terraform_lock"
#   }
# }