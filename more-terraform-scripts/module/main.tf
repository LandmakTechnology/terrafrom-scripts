provider "aws" {
    region = "us-west-2"
}
module "ec2" {
    source = "./ec2m"
    ec2name = "webserver"
    env = "production"
}
output "module_output" {
    value = module.ec2.EIP
}