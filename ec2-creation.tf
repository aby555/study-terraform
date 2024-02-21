resource "aws_instance" "ec2-instance" {

  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2-micro"
  count = 2
  key_name = "app-server"
  tags = {
    Name = "appserver"
  }
}