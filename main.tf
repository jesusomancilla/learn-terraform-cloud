provider "aws" {
  region = var.region
}

resource "aws_instance" "vm" {
  ami           = "ami-00c39f71452c08778"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
