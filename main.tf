provider "aws" {
  region = "ap-south-1"
  access_key = "AKIARJ2OU4TTLMYXEMIR"
  secret_key = "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"
}

resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name      = "new-key"

  tags = {
    Name  = element(var.instance_tags, count.index)
    Batch = "5AM"
  }
}
