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
resource "aws_s3_bucket" "giri-dev_bucket" {
  bucket = "giri-test-bucket-new"

  tags = {
    Name        = "My bucket new"
    Environment = "Dev new"
  }
}
