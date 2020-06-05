resource "aws_instance" "hack_the_ne" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    Name = "Terraform-managed EC2 Instance for Hack the NE"
  }
}

