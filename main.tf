resource "aws_instance" "myec2" {
  ami = var.ami_id
  count = var.instance_count
  instance_type = "t2.micro"
  tags = {
    "Name" = var.ec2_tags[count.index]
  }  
}


output "myec2_instance_ip"{
  value = aws_instance.myec2[*].public_ip
}