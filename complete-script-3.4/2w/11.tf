provider "aws" {
    region = "us-west-2"
}
resource "aws_vpc" "myvpc" {
	cidr_block = "10.10.0.0/16"
	tags = {
        Name = "vpc-prod" 
    }
}
resource "aws_vpc" "myvpc2" {
	cidr_block = "10.10.0.0/16"
	tags = {
        Name = "myvpc2" 
    }
}