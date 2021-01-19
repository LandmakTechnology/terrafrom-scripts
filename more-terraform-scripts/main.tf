provider "aws" { 
}
# input variable 
variable "inputname" {
    type = "string"
    description = "Set the name for your VPC"
}
#vpc.tf
resource "aws_vpc" "myvpc" {
	cidr_block = "10.0.0.0/16"
	tags = {
        Name = var.inputname
        Envrionment = "stage"
  }
}