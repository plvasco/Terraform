# Configure the AWS Provider
provider "aws" {
  access_key = "key"
  secret_key = "key"
  region     = "us-east-1"
}


resource "aws_instance" "web" {
  ami = "ami-02da3a138888ced85"
  instance_type = "t2.micro"
  key_name = "terraform"
  tags {
    Name = "Terraform1"
  }
}
