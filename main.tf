locals {

env = "${terraform.workspace}"

}
resource "aws_instance" "ec2" {

count = 4
  ami = "ami-04cb4ca688797756f"
  instance_type = "t2.micro"


tags = {

    Name = "${local.env}-tf_test-${count.index}"
  }

}
