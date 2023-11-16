provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntuos" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"

  tags = {
    Name = "UbuntuOS"
  }
}
resource "aws_s3_bucket" "dev_bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
