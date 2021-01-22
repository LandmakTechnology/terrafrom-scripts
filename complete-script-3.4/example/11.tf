provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "web" {
    ami           = "ami-01e78c5619c5e68b4"
    instance_type = "t3.micro"
    security_groups = ["mysg"]
    key_name      =  "key22"
    tags = {
        Name = "HelloWorld"
        Environment = "production"
  }  
}
resource "aws_s3_bucket" "b" {
    bucket = "landmark20"
    force_destroy = true
    acl = "private"
    versioning {
        enabled = true
    }
}

terraform {
    backend "s3" {
        bucket = "landmark20"
        encrypt = true
        key	= "terraform.tfstate" 
        region	= "us-west-2" 
        dynamodb_table = "terraform-lock"
    }
}
