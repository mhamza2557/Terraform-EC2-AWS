provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "aws_server" {
  count = 3

  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"
  
  tags = {
    Name = "Your_Name ${count.index}"
  }
}