provider "aws" {

 region = "ap-south-1"
 access_key = "AKIAU6B77CZ5DV346Q2J"
 secret_key = "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"
}

resource "aws_instance" "TOMCAT_SERVER" {
 
 ami = "ami-006935d9a6773e4ec"
 instance_type = "t2.micro"
 key_name = "1st_keypair"
}


