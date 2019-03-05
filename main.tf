# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAJGVJ2BMPYACSK2TA"
  secret_key = "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"
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
