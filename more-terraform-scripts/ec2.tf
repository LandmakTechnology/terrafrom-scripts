provider "aws" {
    region = "us-west-2"
}
resource "aws_instance" "web" {
    ami           = "ami-01e78c5619c5e68b4"
    instance_type = "t3.micro"
    security_group = "mysg"
    key_name      =  "key22"
    tags = {
        Name = "HelloWorld"
        Environment = "production"
  }
}