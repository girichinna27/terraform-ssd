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
resource "aws_s3_bucket" "opsmx-dev_bucket" {
  bucket = "myfirstbucketopsmx"

  tags = {
    Name        = "My bucket opsmx"
    Environment = "opsmx dev"
  }
}
