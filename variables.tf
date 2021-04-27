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

variable "ec2_tags"{
    default = ["RAJEEV-EC2-1", "RAJEEV-EC2-2"]
    description = "Tags for Ec2 instance"
}