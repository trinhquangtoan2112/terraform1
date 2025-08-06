provider "aws" {
  region = "ap-southeast-1"
}

variable "ami_id" {
  description = "value"
}

variable "instance_type" {
  description = "value"
}
variable "name_instance" {
  description = "value"
  type = map(string)
  default ={
    "dev" ="dev"
    "stage"="stage"
    "qa"="qa"
  }
  
}
module "ec2_instance" {
  source = "./module/ec2" 
  ami_id = var.ami_id
  instance_type = var.instance_type
  name_instance = lookup(var.name_instance,terraform.workspace,"dev")
}