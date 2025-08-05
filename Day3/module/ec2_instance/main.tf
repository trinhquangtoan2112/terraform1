
provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "example" {
   ami = var.ami_instance 
   instance_type = var.type_instance
tags = {
    Name = var.name_instance,
   
}
}