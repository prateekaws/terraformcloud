provider "aws" {
  region = "ap-south-1"
  access_key = "AKIARJ2OU4TTLMYXEMIR"
  secret_key = "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"
}

resource "aws_instance" "my-instance" {
  ami           = hstdgtdg
  instance_type = t2.micro
}
