resource "aws_instance" "hack_the_ne" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  key_name = aws_key_pair.hack_the_ne.key_name
  tags = {
    Name = "Terraform-managed EC2 Instance for Hack the NE"
  }
}
