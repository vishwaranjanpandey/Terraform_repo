provider "aws" {
 region = "ap-south-1"
 access_key = "AKIAU6B77CZ5HDKQ5XAR"
 secret_key = "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"
}
resource "aws_instance" "TOMCAT_SERVER" {
 ami = "ami-006935d9a6773e4ec"
 instance_type = "t2.micro"
 key_name =  "1st_keypair"
 monitoring = "true"
 security_groups = ["1st_Security_grp"]
 vpc_security_group_ids = ["sg-0e27cba5b95fe7546"]
 tags = {
    Name = "TOMCAT_SERVER"
}
}
resource "aws_security_group" "TERRAFORM_SEC_GP" {
  name = "terraform_Security_group"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 }
}





