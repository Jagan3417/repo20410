## providers block

provider "aws" {
region = "us-east-1"
}

resource "aws_security_group" "mysecuritygroup0410" {
ingress {
from_port = "80"
to_port = "80"
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}

resource "aws_instance" "myinstance" {
ami                    = "ami-04680790a315cd58d"
instance_type          = "t2.micro"
vpc_security_group_ids = [aws_security_group.mysecuritygroup0410.id]
tags = {
name = "forghamachine0410"

}
}



