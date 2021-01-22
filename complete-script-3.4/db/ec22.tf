variable "servers" {
    type = list(string)

}
resource "aws_instance" "db" {
    ami = "ami-0a36eb8fadc976275"
    instance_type = "t2.micro"
    key_name = "key22"
    count = length(var.servers)
    tags = {
        Name = var.servers[count.index]
    } 
}

output "publicIP" {
    value = aws_instance.db.*.public_ip
}