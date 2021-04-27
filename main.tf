provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = var.ami_id
  count = var.instance_count
  instance_type = "t2.micro"
  tags = {
    "Name" = "RAJEEV-EC2"
  }  
}

variable "ami_id"{
  default = "ami-0742b4e673072066f"
  description = "AMI Id for the EC2 Instance"
  type = string
}

variable "instance_count"{
  default = 2
  type = number
description = "No of EC2 instances to create"
}

output "myec2_instance_ip"{
  value = aws_instance.myec2[*].public_ip
}