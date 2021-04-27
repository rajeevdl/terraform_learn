resource "aws_instance" "myec2" {
  count = var.instance_count
  ami = var.ami_id  
  instance_type = "t2.micro"
  tags = {
    "Name" = var.ec2_tags[count.index]
  }  
}

# resource "aws_vpc" "myvpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name = "RAJEEV-VPC"
#   }
# }

# resource "aws_subnet" "mysubnet" {
#   count = 2
#   vpc_id = aws_vpc.myvpc.id 
#   cidr_block = "10.0.${21+count.index + 1}.0/28"
#   tags = {
#     Name = "RAJEEV-SUBNET-${count.index + 1}"
#   }
# }

#resource "aws_security_group" "subnet_1"{
#  vpc_id = data.aws_subnet.mysubnet.vpc_i

output "myec2_instance_ip"{
  value = aws_instance.myec2[*].public_ip
}