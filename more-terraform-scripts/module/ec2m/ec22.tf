# variable.tf
variable "ec2name" {
    type = string
}

variable "env" {
    type = string
}
# ec2.tf
resource "aws_instance" "web" {
    ami           = "ami-01e78c5619c5e68b4"
    instance_type = "t3.micro"
    security_groups = ["mysg"]
    key_name      =  "key22"
    tags = {
        Name = var.ec2name
        Environment = var.env
  }  
}
#eip.tf
resource "aws_eip" "elasticip" {
    instance = aws_instance.web.id

}
# output.tf
output "EIP" {
    value = aws_eip.elasticip.public_ip
}