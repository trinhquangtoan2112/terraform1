provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "test1day1" {
  ami = "ami-015927f8ee1bc0293"
  instance_type = "t2.micro"
}