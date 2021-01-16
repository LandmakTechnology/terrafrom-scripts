#!/bin/bash
# user-data
sudo yum update -y
sudo yum install wget unzip -y
sudo yum install http -y 
sudo systemctl enable http 
sudo systemctl start httpd 