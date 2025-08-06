provider "aws" {
  region = "ap-southeast-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 ap-southeast-1"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  
}
variable "name_instance" {
  description = "Instance type for the EC2 instance"
  
}
resource "aws_instance" "example" {
  ami =  var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.name_instance
  }
}