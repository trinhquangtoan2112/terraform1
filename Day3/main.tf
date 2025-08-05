provider "aws" {
  region = "ap-southeast-1"
}

module "ec2_instance" {
  source = "./module/ec2_instance"
  ami_instance ="ami-015927f8ee1bc0293"
  type_instance = "t2.micro"
  name_instance = "Instance test1231242"
}