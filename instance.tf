resource "aws_instance" "hack_the_ne" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  // dynamically retrieve SSH Key Name
  key_name = aws_key_pair.hack_the_ne.key_name

  // dynamically set Security Group ID (firewall)
  vpc_security_group_ids = [aws_security_group.hack_the_ne.id]

  tags = {
    Name = "Terraform-managed EC2 Instance for Hack the NE"
  }
}
