/* @Landmark Technologies
 Demo VPC varaibles file. Make sure you replace key_name value
 with your key name which  you have in given aws_region.
*/
variable "aws_region" {
  default = "us-west-2"
}
variable "vpc_cidr" {
  default = "172.0.0.0/24"
}
variable "subnets_cidr" {
  type    = list(string)
  default = ["172.0.0.0/25", "172.0.0.128/25"]
}
variable "availability_zones" {
  type    = list(string)
  default = ["us-west-2a", "us-west-2b"]
}
variable "ubuntuami" {
  default = "ami-0ac73f33a1888c64a"
}
variable "redhatami" {
  default = "ami-01e78c5619c5e68b4"
}
variable "key_name" {
  default = "key22"
}
